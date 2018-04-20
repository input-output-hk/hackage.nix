{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aeson-extra";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/phadej/aeson-extra#readme";
        url = "";
        synopsis = "Extra goodies for aeson";
        description = "The package motivation is twofold:\n\n* provide compatibility layer for @aeson@\n\n* provide extra combinators";
        buildType = "Simple";
      };
      components = {
        aeson-extra = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.hashable
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          aeson-extra-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.exceptions
              hsPkgs.hashable
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.aeson-extra
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
      };
    }