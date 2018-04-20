{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "persistent-mongoDB";
          version = "0.7.0";
        };
        license = "BSD-3-Clause";
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