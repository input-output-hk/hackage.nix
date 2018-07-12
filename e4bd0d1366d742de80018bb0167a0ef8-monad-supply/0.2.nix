{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monad-supply";
          version = "0.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Geoff Hulette <ghulette@gmail.com>";
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