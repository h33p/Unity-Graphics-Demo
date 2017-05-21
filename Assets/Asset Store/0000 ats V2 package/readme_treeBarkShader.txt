Tree Bark Shader
--------------------------------------------

Use this shader instead of the built in "Nature / Soft Occlusion Bark" shader in case you work with traditional imported mesh trees [like those from the terrain asset] and real time shadows.
If you do not have any real time shadows at all just stick with the built in shader for its ambient occlusion will give you better visual results.


1. features
--------------------------------------------
- bark receives shadows
- bark casts shadows
- bump mapping on the bark
- "classical" bending

2. usage
--------------------------------------------
- just assign the shader to the material of your tree prefabs.
- do not forget to add a wind zone to enable bending on trees.