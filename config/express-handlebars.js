var exphbs = require('express-handlebars');
var wnumb = require('wnumb');

var hbs = exphbs.create({
	defaultLayout: 'main-user',
	helpers: {
		ifCond: (v1, operator, v2, options) => {
			switch (operator) {
				case '==':
					return (v1 == v2) ? options.fn(this) : options.inverse(this);
				case '===':
					return (v1 === v2) ? options.fn(this) : options.inverse(this);
				case '!=':
					return (v1 != v2) ? options.fn(this) : options.inverse(this);
				case '!==':
					return (v1 !== v2) ? options.fn(this) : options.inverse(this);
				case '<':
					return (v1 < v2) ? options.fn(this) : options.inverse(this);
				case '<=':
					return (v1 <= v2) ? options.fn(this) : options.inverse(this);
				case '>':
					return (v1 > v2) ? options.fn(this) : options.inverse(this);
				case '>=':
					return (v1 >= v2) ? options.fn(this) : options.inverse(this);
				case '&&':
					return (v1 && v2) ? options.fn(this) : options.inverse(this);
				case '||':
					return (v1 || v2) ? options.fn(this) : options.inverse(this);
				default:
					return options.inverse(this);
			}
		},
		section: function(name, options){
			if (!this._sections) this._sections = {};
			this._sections[name] = options.fn(this);
			return null;
		},
		number_format: n => {
            var nf = wnumb({
                thousand: ','
            });
            return nf.to(n);
        }
	}
});

module.exports = hbs;

