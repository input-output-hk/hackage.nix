{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "colorless";
          version = "2.2.19";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Joe Vargas";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Colorless | The Programmatic IDL";
        description = "Colorless | The Programmatic IDL";
        buildType = "Simple";
      };
      components = {
        "colorless" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.errors
            hsPkgs.exceptions
            hsPkgs.lifted-async
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.scientific
            hsPkgs.safe-exceptions
            hsPkgs.text
            hsPkgs.text-conversions
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          "colorless-suite" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.colorless
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.tuple
              hsPkgs.vector
            ];
          };
        };
      };
    }