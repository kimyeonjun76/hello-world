import sys
import salt.client
import salt.runner
import json

client = salt.client.LocalClient()
runner = salt.runner.RunnerClient(client.opts)
result =runner.cmd('jobs.list_job', arg=[sys.argv[1]])
return_fromjob = result['Result']['slurm1']['return']
out_file = open('/nfs/job_ret.txt', 'a+')
out_file.write(json.dumps(result))
out_file.write("\n")
out_file.write(return_fromjob)
out_file.write("\n")
out_file.write(sys.argv[2])
out_file.write("\n")
out_file.close()
print('end')