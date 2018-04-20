{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      feuerbach = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-classes-logging";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Edward George";
        maintainer = "edwardgeorge@gmail.com";
        author = "Edward George";
        homepage = "https://github.com/edwardgeorge/monad-classes-logging#readme";
        url = "";
        synopsis = "monad-classes based typeclass for Ollie's logging-effect LoggingT";
        description = "monad-classes based typeclass for Ollie's logging-effect LoggingT";
        buildType = "Simple";
      };
      components = {
        monad-classes-logging = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.logging-effect
            hsPkgs.transformers
          ] ++ [ hsPkgs.monad-classes ];
        };
        tests = {
          monad-classes-logging-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.logging-effect
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.transformers
              hsPkgs.monad-classes-logging
            ] ++ [ hsPkgs.monad-classes ];
          };
        };
      };
    }