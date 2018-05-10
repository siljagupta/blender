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
    - source: salt://blender3d/clocktest
    - makedirs: True
    - user: xubuntu
    - group: xubuntu

cmd:
  cmd.run:
    - name: blender -b /home/xubuntu/testrender/3d/clocktest/clocksg.blend -o /home/xubuntu/testrender/output/image_ -f -1

cmd2:
  cmd.run:
    - name: xfconf-query --channel xfce4-desktop --property /backdrop/screen0/monitor0/workspace0/last-image --set /home/xubuntu/testrender/output/image_222
