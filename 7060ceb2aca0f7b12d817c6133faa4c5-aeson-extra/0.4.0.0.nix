{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aeson-extra";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/phadej/aeson-extra#readme";
        url = "";
        synopsis = "Extra goodies for aeson";
        description = "Package provides extra funcitonality on top of @aeson@ and @aeson-compat@";
        buildType = "Simple";
      };
      components = {
        "aeson-extra" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.aeson-compat
            hsPkgs.attoparsec
            hsPkgs.base-compat
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.hashable
            hsPkgs.parsec
            hsPkgs.recursion-schemes
            hsPkgs.scientific
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.time-parsers
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          "aeson-extra-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson-extra
              hsPkgs.containers
              hsPkgs.these
              hsPkgs.time
              hsPkgs.time-parsers
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
      };
    }