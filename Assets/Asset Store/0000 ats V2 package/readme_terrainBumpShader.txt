Shader for bumpmapped terrain including enhanced tiling
-------------------------------------------------------

This shader replaces the built in terrain shader.

1. features
--------------------------------------------
It is based upon the work of Chris Morris and adds bumpmapping as well as better tiling.

Tiling is improved by just mixing the terrain texture with a copy of itself at a scale of 4x.
[This just works for the first texture slot but easily can be apllied to all other slots as well.]

More information can be found here: http://forum.unity3d.com/threads/116509-Improved-Terrain-Texture-Tiling


2. usage
--------------------------------------------

- import the package
- save, quit an restart unity in order to get the hacked shader working
- in case do not get any bumpmapping on the terrain, select the shader in the project tab and refresh it.

3. known problems
--------------------------------------------

using this shader won’t give you a nice transition between splatted shaded parts of the terrain and those who use the simple basemap for the basemap still is generated using some other shaders…
sorry about that.