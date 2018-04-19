{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "persistent-mongoDB";
          version = "0.9.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Greg Weber <greg@gregweber.info>";
        author = "Greg Weber <greg@gregweber.info>";
        homepage = "http://www.yesodweb.com/book/persistent";
        url = "";
        synopsis = "Backend for the persistent library using mongoDB.";
        description = "Backend for the persistent library using mongoDB.";
        buildType = "Simple";
      };
      components = {
        persistent-mongoDB = {
          depends  = [
            hsPkgs.base
            hsPkgs.persistent
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.resourcet
            hsPkgs.mongoDB
            hsPkgs.bson
            hsPkgs.network
            hsPkgs.compact-string-fix
            hsPkgs.cereal
            hsPkgs.path-pieces
            hsPkgs.monad-control
            hsPkgs.aeson
          ];
        };
      };
    }