import sql from 'k6/x/sql';

export function getUserIds() {
        console.log('Querying from database');
        const db = sql.open("mysql", 'root:password@tcp(docker.for.mac.localhost:3306)/user_service');
        let results = sql.query(db, "select id from users;");
        return results
}



