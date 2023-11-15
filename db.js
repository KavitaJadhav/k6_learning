import sql from 'k6/x/sql';

export function getUserIds() {
//        const db = sql.open("mysql", 'root:password@tcp(127.0.0.1:3306)/user_service');
        const db = sql.open("mysql", 'root:password@tcp(docker.for.mac.localhost:3306)/user_service');
        let results = sql.query(db, "select id from users;");
        return results
}



