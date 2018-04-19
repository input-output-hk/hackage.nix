{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "hnop";
          version = "0.1";
        };
        license = "NONE";
        copyright = "";
        maintainer = "";
        author = "Ashley Yakeley <ashley@semantic.org>";
        homepage = "";
        url = "";
        synopsis = "";
        description = "";
        buildType = "Custom";
      };
      components = {
        exes = {
          hnop = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }