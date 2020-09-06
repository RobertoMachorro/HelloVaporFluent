import Fluent
import FluentPostgresDriver
import Vapor

// configures your application
public func configure(_ app: Application) throws {
	// uncomment to serve files from /Public folder
	// app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

	guard let pgUrl = Environment.get("DATABASE_URL") else {
		fatalError("DATABASE_URL not defined")
	}
	try app.databases.use(.postgres(url: pgUrl), as: .psql)

	app.migrations.add(CreateTodo())

	// register routes
	try routes(app)
}
