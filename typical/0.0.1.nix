{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "typical";
          version = "0.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Rick Kaudewitz <rick.kaudewitz@yahoo.de>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Type level numbers, vectors, list. This lib needs to be extended.";
        description = "Type level programming library";
        buildType = "Simple";
      };
      components = {
        typical = {
          depends  = [ hsPkgs.base ];
        };
      };
    }