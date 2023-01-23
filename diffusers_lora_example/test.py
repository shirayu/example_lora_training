#!/usr/bin/env python3

import argparse
from pathlib import Path

import torch
from diffusers import DiffusionPipeline


def operation(
    *,
    base: str,
    lora: Path,
    seed: int,
    number: int,
    outdir: Path,
    prompt: str,
    device: str = "cuda",
):
    outdir.mkdir(
        exist_ok=True,
        parents=True,
    )
    with outdir.joinpath("prompt.txt").open("w") as outf:
        outf.write(f"{prompt}\n")

    pipe = DiffusionPipeline.from_pretrained(
        base,
        torch_dtype=torch.float16,
        safety_checker=None,
    ).to(device)

    pipe.unet.load_attn_procs(lora)

    for i in range(number):
        generator = torch.Generator(device="cuda").manual_seed(seed + i)
        image = pipe(
            prompt=prompt,
            num_inference_steps=50,
            generator=generator,
            num_images_per_prompt=1,
        ).images[0]
        image.save(str(outdir.joinpath(f"generated_{seed+i}.png")))


def get_opts() -> argparse.Namespace:
    oparser = argparse.ArgumentParser()
    oparser.add_argument(
        "--base",
        default="JosephusCheung/ACertainty",
    )
    oparser.add_argument(
        "--lora",
        required=True,
        type=Path,
    )
    oparser.add_argument(
        "-o",
        "--outdir",
        required=True,
        type=Path,
    )
    oparser.add_argument(
        "--seed",
        type=int,
        default=42,
    )
    oparser.add_argument(
        "--number",
        type=int,
        default=4,
    )
    oparser.add_argument(
        "--prompt",
        type=str,
        default="Wikipe-tan, school, uniform, 1girl, hold piece of cake",
    )

    return oparser.parse_args()


def main() -> None:
    opts = get_opts()
    operation(
        base=opts.base,
        lora=opts.lora,
        seed=opts.seed,
        outdir=opts.outdir,
        number=opts.number,
        prompt=opts.prompt,
    )


if __name__ == "__main__":
    main()
