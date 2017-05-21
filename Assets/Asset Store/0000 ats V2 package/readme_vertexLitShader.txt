Shader for groundplants supporting wind
--------------------------------------------


This shader replaces the built in vertexLit shader for detail meshes used within the terrain engine but also can be used on manually placed game objects.


1. features
--------------------------------------------

1.1. meshes placed using the terrain engine

- bending is controlled individually for each different mesh model via terrain engine --> dry and healthy color
- meshes receive shadows
- some "basic" translucency [forward rendering only]
- low cost rendering due to the terrain engine

1.2. meshes placed as single game objects

- bending controlled individually for each different mesh model via material --> color
- meshes receive shadows
- meshes cast shadows
- some "basic" translucency [forward rendering only]
- low cost rendering due to the ability of beeing batched as static object


2. usage
--------------------------------------------

- import the package
- save, quit an restart unity in order to get the hacked shader working

2.1. terrain engine

- add the fern or any other two sided model to your terrain using "Add Detail mesh"
- just lower the alpha value of both dry and healthy color otherwise your model gets fully bended
- set render mode to "VertexLit"
- start painting some plants
- hit play so you can see the bending
- still in playmode open the "Edit Detail Mesh" dialogue and tweak the values of dry and healthy color:
-- red: WaveMove or Displacement
-- blue: Frequency
-- green: Windspeed
-- alpha: overall Factor to adjust the bending
___________________________________________
IMPORTANT
unity automatically bakes the textures of all details like grass, fern and bushes to one big texture atlas. as the bending depends on the y-position within the uv map, the y-position of each detail changes when adding are removing one. this will effect your adjustments.
either you will have to readjust your settings or you first add all details you want to use then adjust the bending.
___________________________________________

2.2. manually placed plants
- in the project tab drop the "hackedVertexLit" shader to the material of your model
- add your model to the scene
- hit play
- still in playmode tweak the values of Main color:
-- red: WaveMove or Displacement
-- blue: Frequency
-- green: Windspeed
-- alpha: overall Factor to adjust the bending

3. needs
--------------------------------------------

3.1. general needs

- two sided models
- uv mapping: bending depends on the y-position within the uv map. so make sure that your uv-mapping and textures always are upright as vertices at the bottom wontâ€™t bend at all whereas vertices at the upper part of the texture / uv map will be fully effected by bending.
- export webplayer / standalone: make sure that the shader is assigned to any game object in your scene â€“ not only to detail meshes placed within the terrain engine but also to any manually placed mesh. otherwise it will not be exported and the webplayer/standalone will fall back to the built in vertexLit shader.

3.2. forward rendering

- using the shader in forward rendering mode you have to define the translucency color as global color [see setupVertexLitShader.js]. there is only one translucency color shared by all models/plants

3.3. deferred rendering

- as deferred rendering does no€™t offer a the lighting model "wrap around diffuse" which is used in forward rendering the shader clamps the lighting against a global color called "_VertexLitBaselight", faking some kind of translucency and stoping leaves from getting too dark. this global color must be passed to the shader [see setupVertexLitShader.js].
in case your lighting changes over time [day of time] you will have to update the "_VertexLitBaselight" according to the intensity of your sun light or even change its color [see setupVertexLitShader.js].


4. tips
--------------------------------------------

- as meshes placed using the terrain engine do not cast shadows, adding a lot of manually placed plants as single game objects really increases the visual impact of your scene.
in order to have those game objects drawn pretty fast mark them as "static" so they can be batched [you have to enable "batch static objects" in your player settings]]. additionally place all manually added plants on a special layer and set up this layer to be culled at exactely the same distance as your details within the terrain engine are dropped [see demoscene and setupVertexLitShader.js].
this will save a lot of draw calls even if you have placed many plants manually.
in case you use lightmaps just set the "Scale in Lightmap" to "0" so no lightmap will be calculated for those plants.
