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
      identifier = { name = "ascii-cows"; version = "0.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Pascal Hartig <phartig@rdrei.net>";
      author = "Pascal Hartig";
      homepage = "http://github.com/passy/cows-hs";
      url = "";
      synopsis = "A collection of ASCII cows. Moo.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          (hsPkgs."random-extras" or (errorHandler.buildDepError "random-extras"))
        ];
        buildable = true;
      };
    };
  }