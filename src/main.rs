use std::io::Result;

use actix_cors::Cors;
use actix_web::{App, HttpServer};

// test
#[actix_web::main]
async fn main() -> Result<()> {
    HttpServer::new(move || {
        App::new().wrap(
            Cors::default()
                .allow_any_origin()
                .allow_any_method()
                .allow_any_header(),
        )
    })
    .bind(("localhost", 8080))?
    .run()
    .await
}
