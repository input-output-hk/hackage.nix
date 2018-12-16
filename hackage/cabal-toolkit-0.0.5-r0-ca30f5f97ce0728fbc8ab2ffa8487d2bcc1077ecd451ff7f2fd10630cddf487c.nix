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
      specVersion = "1.10";
      identifier = {
        name = "cabal-toolkit";
        version = "0.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Shao Cheng";
      maintainer = "Shao Cheng <astrohavoc@gmail.com>";
      author = "";
      homepage = "https://github.com/TerrorJack/cabal-toolkit#readme";
      url = "";
      synopsis = "Helper functions for writing custom Setup.hs scripts.";
      description = "Helper functions for writing custom Setup.hs scripts.\n\nThis is useful to access configuration parameters of a @Cabal@-based project\nat runtime, e.g. when you want to supply the right\n@GHC_PACKAGE_PATH@ to @ghc@ oder @ghci@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.Cabal)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.ghc)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }