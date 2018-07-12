{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "egyptian-fractions";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2018 Vanessa McHale";
        maintainer = "vanessa.mchale@iohk.io";
        author = "Vanessa McHale";
        homepage = "";
        url = "";
        synopsis = "Egyptian fractions in Haskell";
        description = "Fibonacci's algorithm for computing Egyptian fractions.";
        buildType = "Simple";
      };
      components = {
        "egyptian-fractions" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }