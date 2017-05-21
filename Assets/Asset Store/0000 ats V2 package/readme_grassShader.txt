Shader for grass supporting better bending
--------------------------------------------


This shader replaces the built in grass shader for grass textures and detail meshes used within the terrain engine.


1. features
--------------------------------------------

- bending is globally controlled via terrain setting [windsize/speed/bending] plus individually for each texture / mesh model via terrain engine --> dry and healthy color --> alpha
- low cost rendering due to the terrain engine

2. usage
--------------------------------------------

- import the package
- save, quit an restart unity in order to get the hacked shader working

2.1. terrain engine --> Grasstexture

- add any detail texture or an single sided model to your terrain using "Add Grass Texture" or "Add Detail mesh"
- uncheck the checkbox "Billboard"
- start painting some plants
- hit play so you can see the bending
- still in playmode open the "Edit Detail Texture" dialogue and tweak the values of dry and healthy color:
--> alpha: overall Factor to adjust the bending

2.2. terrain engine --> Detail Mesh

- add a single sided model to your terrain using "Add Detail mesh"
- set render mode to "Grass"
- start painting some plants
- hit play so you can see the bending
- still in playmode open the "Edit Detail Mesh" dialogue and tweak the values of dry and healthy color:
--> alpha: overall Factor to adjust the bending

___________________________________________
IMPORTANT
unity automatically bakes the textures of all details like grass, fern and bushes to one big texture atlas. as the bending depends on the y-position within the uv map, the y-position of each detail changes when adding are removing one. this will effect your adjustments.
either you will have to readjust your settings or you first add all details you want to use then adjust the bending.
___________________________________________

3. needs
--------------------------------------------

- single sided models
- uv mapping: bending depends on the y-position within the uv map. so make sure that your uv-mapping and textures always are upright as vertices at the bottom wont’t bend at all whereas vertices at the upper part of the texture / uv map will be fully effected by bending.
- export webplayer / standalone: make sure that the shader is assigned to any game object in your scene – not only to detail meshes placed within the terrain engine but also to any manually placed mesh. otherwise it will not be exported and the webplayer/standalone will fall back to the built in vertexLit shader.

