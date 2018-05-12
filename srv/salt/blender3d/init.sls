{% set user = pillar.get('user', 'xubuntu') %}

blender:
  pkg.installed

/home/{{ user }}/.config/blender/2.76/config/userpref.blend:
  file.managed:
    - source: salt://blender3d/userpref.blend
    - makedirs: True
    - user: {{ user }}
    - group: {{ user }}

/home/{{ user }}/testrender:
  file.recurse:
    - source: salt://blender3d/clocktest
    - makedirs: True
    - user: {{ user }}
    - group: {{ user }}

cmd:
  cmd.run:
    - name: blender -b /home/{{ user }}/testrender/clocksg.blend -o /home/{{ user }}/testrender/output/image_ -f -1

cmd2:
  cmd.run:
    - name: xfconf-query --channel xfce4-desktop --property /backdrop/screen0/monitor0/workspace0/last-image --set /home/{{ user }}/testrender/output/image_0250.png
    
