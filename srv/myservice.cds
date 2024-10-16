using test9.db as db from '../db/schema';

service CatalogService {
    entity Albums as projection on db.Album;
    entity Interpret as select from db.Interpret;
    

}