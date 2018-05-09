blender:
  pkg.installed

/home/xubuntu/.config/blender/2.76/config/userpref.blend:
  file.managed:
    - source: salt://blender3d/userpref.blend
    - makedirs: True
    - user: xubuntu
    - group: xubuntu
