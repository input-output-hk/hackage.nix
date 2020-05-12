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
      identifier = { name = "th-pprint"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brian@brianmckenna.org";
      author = "Brian McKenna";
      homepage = "";
      url = "";
      synopsis = "Simplify and render Template Haskell";
      description = "Simplify and render Template Haskell. Functions to dump TH code for easy\ninspection and/or copy-pasting the result into your Haskell files.\n\nFor example:\n\n> putStrLn \$(simplifiedTH =<< makePrisms ''Maybe)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }