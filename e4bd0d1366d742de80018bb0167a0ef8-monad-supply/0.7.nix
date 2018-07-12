{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monad-supply";
          version = "0.7";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Geoff Hulette <geoff@hulette.net>";
        author = "Geoff Hulette and unknown HaskellWiki contributor(s).";
        homepage = "";
        url = "";
        synopsis = "Stateful supply monad.";
        description = "Support for computations which consume values from a (possibly infinite) supply.";
        buildType = "Simple";
      };
      components = {
        "monad-supply" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }