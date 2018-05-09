blender:
  pkg.installed

/home/xubuntu/.config/blender/2.76/config/userpref.blend:
  file.managed:
    - source: salt://blender3d/userpref.blend
    - makedirs: True
    - user: xubuntu
    - group: xubuntu

/home/xubuntu/testrender:
  file.recurse:
    - source: salt://blender3d/pabellon_barcelona_v1.scene_
    - makedirs: True
    - user: xubuntu
    - group: xubuntu

