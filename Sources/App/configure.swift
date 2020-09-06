import Fluent
import FluentPostgresDriver
import Vapor

// configures your application
public func configure(_ app: Application) throws {
	// uncomment to serve files from /Public folder
	// app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

	try app.databases.use(.postgres(url: Environment.get("DATABASE_URL") ?? "postgres://docker:password@localhost:5432/docker"), as: .psql)

	app.migrations.add(CreateTodo())

	// register routes
	try routes(app)
}
