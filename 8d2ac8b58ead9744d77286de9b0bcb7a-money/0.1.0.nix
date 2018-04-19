{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "money";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "2016 Juan Pedro Villa Isaza";
        maintainer = "Juan Pedro Villa Isaza <jpvillaisaza@gmail.com>";
        author = "Juan Pedro Villa Isaza <jpvillaisaza@gmail.com>";
        homepage = "https://github.com/jpvillaisaza/money";
        url = "";
        synopsis = "Money";
        description = "Money.";
        buildType = "Simple";
      };
      components = {
        money = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          examples = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }