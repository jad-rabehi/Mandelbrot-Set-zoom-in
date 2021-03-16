# Mandelbrot set generation with automated zoom-in using Matlab
---
Mandelbrot set is a form of fractal obtained by visualizing convergence of the complex function <img src="https://render.githubusercontent.com/render/math?math=f(z)=z^2%2Bc"> with respect to the values of the constant <img src="https://render.githubusercontent.com/render/math?math=c"> in the complex plan.

---

## Instructions

No toolbox needed to be installed in Matlab.

---

## Result

This result is obtained for <img src="https://render.githubusercontent.com/render/math?math=c=x%2Biy">  with <img src="https://render.githubusercontent.com/render/math?math=x \in [-2,0.8]"> and <img src="https://render.githubusercontent.com/render/math?math=y \in [-1.4,1.4]">

Here, for choosing colors, we use the scalar color maps existing in matlab with:

```bash
colormap jet       % this line can be changed in the file MandelbrotSet_zoom.m
```

we get

<p align="center">
  <img width="600" src="images/Mandelbrot_jet.gif">
</p>

### Change colors

Different color map can be used for instance with:

```bash
colormap colorcube
```

it provides

<p align="center">
  <img width="600" src="images/Mandelbrot_colorcube.gif">
</p>


with:

```bash
colormap lines
```

it provides

<p align="center">
  <img width="600" src="images/Mandelbrot_lines.gif">
</p>

---
## Copyrights






