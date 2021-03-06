module.exports = function (app, express, session, hbs, logger, cookieParser, bodyParser, passport,flash,handleLayoutMDW) {
	app.engine('handlebars', hbs.engine);
	app.set('view engine', 'handlebars');
	app.set('views', 'views');

	// app.use(logger('dev'));
	app.use(bodyParser.json());
	app.use(bodyParser.urlencoded({ extended: false }));
	app.use(cookieParser());
	app.use(express.static('public'));

	app.use(session({
		secret: 'abcd',
		resave: false,
		saveUninitialized: true,
		cookie: {
			maxAge: 1000000000000000000000*1000*60*10 //Tồn tại 10 phút
		}
	}));

	app.use(passport.initialize());
	app.use(passport.session());
	app.use(flash());
	app.use((req, res, next) => {
		res.locals = ({
			user: req.user
		});
		return next();
	})
	app.use(handleLayoutMDW);
}
