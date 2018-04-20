{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "salve";
          version = "0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Taylor Fausak";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Semantic version numbers and constraints.";
        description = "Salve provides semantic version numbers and constraints.";
        buildType = "Simple";
      };
      components = {
        salve = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.microlens
            ];
          };
        };
        benchmarks = {
          benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.salve
            ];
          };
        };
      };
    }