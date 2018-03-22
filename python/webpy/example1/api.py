#!/usr/bin/env python
import web
import json

urls = (
	'/test', 'testing',
	'/test/(.*)', 'testing_param'
)


class testing:
	def GET( self ):
		testResult = {'result1': '123', 'result2': 'asb'}
		web.header('Content-Type', 'application/json')
		return json.dumps( testResult )

class testing_param:
	def GET( self, param ):
		res = {'result': param}
		web.header('Content-Type', 'application/json')
		return json.dumps( res );

if __name__ == "__main__":
	app = web.application( urls, globals() )
	app.run()
