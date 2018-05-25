{% if (data['fun'] == 'cmd.run' and data['return'] != "") or data['success'] == 'false' or data['retcode'] != 0 %}
tmp/salt_reactor_failed.log:
  runner.salt.cmd:
    - arg:
      -  cmd.run
      -  'python /nfs/job_ret.py {{ data['jid'] }} {{ data['retcode'] }}'
{% endif %}