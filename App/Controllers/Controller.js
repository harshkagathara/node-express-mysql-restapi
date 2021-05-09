const connection = require('../db');

exports.getAll = (req, res) => {
	connection.query('select * from customer', function(error, results, fields) {
		if(error) throw error;
		res.end(JSON.stringify(results));
	});
}
exports.getOne = (req, res) => {
		connection.query('select * from customer where Id=?', [req.params.Id], function(error, results, fields) {
			if(error) throw error;
			res.end(JSON.stringify(results));
		});
}
exports.Create = (req, res) => {
	var params = req.body;
	console.log(params);
	connection.query('INSERT INTO customer SET ?', params, function(error, results, fields) {
		if(error) throw error;
		res.end(JSON.stringify(results));
	});
}
exports.Update = (req, res) => {
	let sql = "UPDATE customer SET Name='"+req.body.Name+"',Phone='"+req.body.Phone+"',Country='"+req.body.Country+"', Address='"+req.body.Address+"' WHERE Id="+req.params.Id;
	connection.query(sql, (err, results) => {
			  if(err) throw err;
			  res.send(JSON.stringify({"status": 200, "response": results}));
			});
}
exports.Delete = (req, res) => {
	let sql = "DELETE FROM customer where Id ='" + req.params.Id + "' ";
	connection.query(sql ,(error,results)=> {
		if(error) throw error;
		res.end('Record has been deleted!');
	});
}
