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
    flags = { enable-cuda = true; };
    package = {
      specVersion = "1.22";
      identifier = { name = "FAI"; version = "0.1.0.17"; };
      license = "LGPL-3.0-only";
      copyright = "(C) 2018 Johann Lee <me@qinka.pro>";
      maintainer = "me@qinka.pro";
      author = "Johann Lee";
      homepage = "https://github.com/Qinka/HaskellFAI";
      url = "";
      synopsis = "Haskell Foreign Accelerate Interface";
      description = "The haskell interface for foreign accelerate framework.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
        ];
        libs = pkgs.lib.optional (flags.enable-cuda) (pkgs."cudart" or (errorHandler.sysDepError "cudart"));
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."FAI" or (errorHandler.buildDepError "FAI"))
            (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }