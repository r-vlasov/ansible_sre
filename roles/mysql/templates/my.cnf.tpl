[mysqld]
datadir = /var/lib/mysql
{% if ansible_os_family == 'RedHat' %}
socket = /var/lib/mysql/mysql.sock
{% endif %}
{% if ansible_os_family == 'Debian' %}
socket = /var/run/mysqld/mysqld.sock
{% endif %}
symbolic_links = 0
skip_name_resolve
max_allowed_packet = 32M
# default_time_zone = 'Europe/Moscow'

character_set_server = utf8
collation_server = utf8_general_ci
