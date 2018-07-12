{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "overture";
          version = "0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Taylor Fausak <taylor@fausak.me>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "An alternative to some of the Prelude.";
        description = "<https://github.com/tfausak/overture>";
        buildType = "Simple";
      };
      components = {
        "overture" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }