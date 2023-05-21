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
      specVersion = "2.2";
      identifier = { name = "inline-c-objc"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2015-2016 FP Complete Corporation, (c) 2017-2023 Francesco Mazzoli";
      maintainer = "f@mazzo.li";
      author = "Francesco Mazzoli";
      homepage = "";
      url = "";
      synopsis = "Lets you embed Objective-C code into Haskell.";
      description = "Utilities to inline Objective-C code into Haskell using inline-c.  See\ntests for example on how to build.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
            (hsPkgs."inline-c-objc" or (errorHandler.buildDepError "inline-c-objc"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Foundation" or (errorHandler.sysDepError "Foundation"));
          buildable = true;
          };
        };
      };
    }