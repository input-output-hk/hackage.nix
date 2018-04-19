{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "predicate-class";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "heli@uber.com";
        author = "David Thomas";
        homepage = "";
        url = "";
        synopsis = "Helper class for passing context along a predicate value";
        description = "Helper class for passing context along a predicate value\nUsed as a helper in queryparser";
        buildType = "Simple";
      };
      components = {
        predicate-class = {
          depends  = [ hsPkgs.base ];
        };
      };
    }