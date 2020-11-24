MIGRATION_LABEL = "to-be-changed"
DATE_WITH_TIME := $(shell /bin/date "+%Y%m%d%H%M%S")

generateChangeLog:
	./mvnw -X clean compile liquibase:generateChangeLog -Dliquibase.defaultSchemaName=PUBLIC -Dliquibase.defaultCatalogName=TESTDB -Dliquibase.outputChangeLogFile=src/main/resources/db/changelog/changes/${DATE_WITH_TIME}-${MIGRATION_LABEL}.xml -Dliquibase.url="hibernate:spring:org.eu.rubensa.liquibase.entity?dialect=liquibase.ext.hibernate.database.HibernateGenericDialect&hibernate.physical_naming_strategy=org.springframework.boot.orm.jpa.hibernate.SpringPhysicalNamingStrategy&hibernate.implicit_naming_strategy=org.springframework.boot.orm.jpa.hibernate.SpringImplicitNamingStrategy" -Dliquibase.driver=liquibase.ext.hibernate.database.connection.HibernateDriver
