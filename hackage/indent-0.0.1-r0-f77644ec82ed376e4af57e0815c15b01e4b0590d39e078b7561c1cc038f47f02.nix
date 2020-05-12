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
      identifier = { name = "indent"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Ole Krüger 2018";
      maintainer = "haskell-indent@vprsm.de";
      author = "Ole Krüger";
      homepage = "";
      url = "";
      synopsis = "Fix your indentation.";
      description = "Fix your indentation with this dead simple tool.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "indent" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."indent" or (errorHandler.buildDepError "indent"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }