require "ruby-plsql-spec"
require "yaml"

desc "Create togdata schema for testing"
task :setup do
    plsql.connect! username: 'system', password: 'oracle', database: 'xe', host: 'localhost', port: 49161
    plsql.dbms_output_stream = STDOUT

    # Delete the togdata user if it exists
    begin
        plsql.execute("DROP USER TOGDATA")
    rescue
    end

    # Create the togdata user
    plsql.execute("CREATE USER TOGDATA IDENTIFIED BY TOGDATA")
    plsql.execute("GRANT CREATE ANY PROCEDURE TO TOGDATA")
    plsql.execute("GRANT CREATE ANY INDEX TO TOGDATA")
    plsql.execute("GRANT CREATE ANY TABLE TO TOGDATA")
    plsql.execute("GRANT CONNECT TO TOGDATA")
    plsql.execute("GRANT UNLIMITED TABLESPACE TO TOGDATA")

    # Load in the schema for testing
    # TODO: investigate better tools for this, eg standalone-migrations (ruby) or flyway (java)
    sql = IO.read('sql/REP_ORDERS.1.sql')
    puts sql
    plsql.execute(sql)
end