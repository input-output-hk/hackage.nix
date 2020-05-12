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
      identifier = { name = "qux"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "public@hjwylde.com";
      author = "Henry J. Wylde";
      homepage = "https://github.com/qux-lang/qux";
      url = "";
      synopsis = "Command line binary for working with the Qux language";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "qux" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."language-qux" or (errorHandler.buildDepError "language-qux"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }