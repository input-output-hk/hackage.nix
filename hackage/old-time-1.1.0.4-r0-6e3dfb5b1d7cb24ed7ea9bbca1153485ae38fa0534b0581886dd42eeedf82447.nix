{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "old-time"; version = "1.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "https://github.com/haskell/old-time";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Time library";
      description = "This package provides the old time library.\n\nFor new projects, the newer\n<http://hackage.haskell.org/package/time time library>\nis recommended.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }