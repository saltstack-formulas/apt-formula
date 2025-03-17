
repos_maintained_by_another_formula:
  file.managed:
    - name: /etc/apt/sources.list.d/unmanaged.list
    - mode: '0644'
    - contents: "## unmanged list file that shouldn't be removed"
