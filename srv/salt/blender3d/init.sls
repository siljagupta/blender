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

cmd:
  cmd.run:
    - name: blender -b /home/xubuntu/testrender/3d/pavillon_barcelone_v1.2.blend -o /home/xubuntu/testrender/3d -f -1

