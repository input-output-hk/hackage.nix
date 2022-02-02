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
      specVersion = "1.12";
      identifier = { name = "heavy-logger-instances"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Ilya Portnov";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya Portnov";
      homepage = "https://github.com/portnov/heavy-logger#readme";
      url = "";
      synopsis = "Orphan instances for data types in heavy-logger package";
      description = "This package contains orphan instances for data types in heavy-logger package for:\n* Binary type class (from binary package)\n* MonadThrow, MonadCatch, MonadMask type classes (from exceptions package)\n* MonadUnliftIO type class (from unliftio-core package) for LoggingT transformer.";
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
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-format-heavy" or (errorHandler.buildDepError "text-format-heavy"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
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
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-format-heavy" or (errorHandler.buildDepError "text-format-heavy"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            ];
          buildable = true;
          };
        };
      };
    }