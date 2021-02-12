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
      identifier = { name = "hsqml"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2012 Robin KAY";
      maintainer = "komadori@gekkou.co.uk";
      author = "Robin KAY";
      homepage = "http://www.gekkou.co.uk/";
      url = "";
      synopsis = "Haskell binding for Qt Quick";
      description = "A Haskell binding for Qt Quick.\nGeneral documentation is present in the 'Graphics.QML' module.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."QtCore4" or (errorHandler.sysDepError "QtCore4"))
          (pkgs."QtGui4" or (errorHandler.sysDepError "QtGui4"))
          (pkgs."QtDeclarative4" or (errorHandler.sysDepError "QtDeclarative4"))
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          ];
        pkgconfig = (pkgs.lib).optional (!system.isWindows) (pkgconfPkgs."QtDeclarative" or (errorHandler.pkgConfDepError "QtDeclarative"));
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "hsqml-test1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."hsqml" or (errorHandler.buildDepError "hsqml"))
            ];
          buildable = true;
          };
        };
      };
    }