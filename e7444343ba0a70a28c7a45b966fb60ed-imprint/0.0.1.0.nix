{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "imprint";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov92@gmail.com>";
        author = "Mark Karpov <markkarpov92@gmail.com>";
        homepage = "https://github.com/mrkkrp/imprint";
        url = "";
        synopsis = "Serialization of arbitrary Haskell expressions";
        description = "Serialization of arbitrary Haskell expressions.";
        buildType = "Simple";
      };
      components = {
        "imprint" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.constraints
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.constraints
              hsPkgs.hspec
              hsPkgs.imprint
            ];
          };
        };
      };
    }