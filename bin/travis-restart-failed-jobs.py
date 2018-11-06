#!/usr/bin/env python

import commands, re

builds = commands.getoutput('travis history --limit 25')
builds = map(lambda x: x.split(), builds.split('\n'))
builds = filter((lambda x: x[1] in ['started:', 'failed:', 'errored:', 'created:']), builds)
for build in builds:
	print ' '.join(build), '...'
	build_num = build[0][1:]
	jobs = commands.getoutput('travis show %s' % build_num)
	jobs = map((lambda x: x.split()), jobs.split('\n'))
	jobs = filter((lambda x: len(x) > 1 and x[1] in ['failed:', 'errored:']), jobs)
	for job in jobs:
		print '', ' '.join(job), '...'
		job_num = job[0][1:]
		job_details = commands.getoutput('travis show %s' % job_num)
		if re.search('Allow Failure:\\s+true', job_details):
			print '', '', 'job is allowed failure'
		else:
			print '', '', 'restarting...'
			restart_output = commands.getoutput('travis restart %s' % job_num)
			restart_output = ' '.join(filter((lambda x: 'warning' not in x), restart_output.split('\n')))
			print '', '', restart_output
