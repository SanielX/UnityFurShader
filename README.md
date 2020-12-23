# Unity Fur Shader
<img src="Docs/Intro.png"/>

### I deleted all fur shaders except new one called "Surface Cutout" shader
It's supposed to be second material on your mesh because there is no surface, only fur is rendered.
I made it cutout and moved to surface shader from frag-vert so unity can lit fur properly, also fog now works. But cutout shader looks pretty weird without antialiasing
Also it has more perfomance overhead than the original shader.

If you want this shader to be transparent: go to `FurShaderSurface` and for every pass change `alphatest:_Cutoff` to `alpha`. It still will be lit, but won't get any shadows

<img src="CutoutFur.png" width="600"/>
<img src="TransparentFur.png" width="600"/>


### Thanks
[Original Repo](https://github.com/Sorumi/UnityFurShader)

[Fur Effects - Teddies, Cats, Hair ....](http://www.xbdev.net/directx3dx/specialX/Fur/index.php)

[Fur shader - Shaders Laboratory](http://www.shaderslab.com/demo-60---fur-shader.html)
