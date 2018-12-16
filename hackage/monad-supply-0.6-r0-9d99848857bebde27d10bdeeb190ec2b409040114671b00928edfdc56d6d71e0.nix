{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "monad-supply";
        version = "0.6";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }