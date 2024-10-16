namespace test9.db;

using {cuid} from '@sap/cds/common';
entity Album : cuid {
    
    title: String;
    year: Integer;
    genre: Genre;
    interpret: Association to Interpret ; //interpret_ID
}

entity Interpret : cuid {
    
    name: String;
    albums : Association to one Album on albums.interpret = $self; 
    //albums : Association to Album;
    
}

type Genre : String enum {
    Rock; Pop; Classic;
}