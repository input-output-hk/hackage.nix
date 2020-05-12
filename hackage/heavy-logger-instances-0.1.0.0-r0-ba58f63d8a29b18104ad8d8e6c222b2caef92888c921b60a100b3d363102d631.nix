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
      identifier = { name = "heavy-logger-instances"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ilya Portnov";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya Portnov";
      homepage = "https://github.com/portnov/heavy-logger#readme";
      url = "";
      synopsis = "Orphan instances for data types in heavy-logger package";
      description = "Orphan instances for data types in heavy-logger package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."heavy-logger" or (errorHandler.buildDepError "heavy-logger"))
          (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-format-heavy" or (errorHandler.buildDepError "text-format-heavy"))
          ];
        buildable = true;
        };
      tests = {
        "binary-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."heavy-logger" or (errorHandler.buildDepError "heavy-logger"))
            (hsPkgs."heavy-logger-instances" or (errorHandler.buildDepError "heavy-logger-instances"))
            (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-format-heavy" or (errorHandler.buildDepError "text-format-heavy"))
            ];
          buildable = true;
          };
        };
      };
    }