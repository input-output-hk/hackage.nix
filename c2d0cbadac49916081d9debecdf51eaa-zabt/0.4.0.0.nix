{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zabt";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Joseph Tel Abrahamson";
        maintainer = "me@jspha.com";
        author = "Joseph Tel Abrahamson <me@jspha.com>";
        homepage = "https://github.com/tel/hs-zabt#readme";
        url = "";
        synopsis = "Simple-minded abstract binding trees";
        description = "Simple-minded abstract binding trees. Please see README.md";
        buildType = "Simple";
      };
      components = {
        "zabt" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
        tests = {
          "zabt-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.zabt
              hsPkgs.tasty
              hsPkgs.tasty-hspec
            ];
          };
        };
      };
    }