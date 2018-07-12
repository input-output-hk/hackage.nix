{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "salve";
          version = "1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Taylor Fausak";
        author = "";
        homepage = "https://github.com/tfausak/salve#readme";
        url = "";
        synopsis = "Semantic version numbers and constraints.";
        description = "Salve provides semantic version (SemVer) numbers and constraints (ranges).";
        buildType = "Simple";
      };
      components = {
        "salve" = {
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