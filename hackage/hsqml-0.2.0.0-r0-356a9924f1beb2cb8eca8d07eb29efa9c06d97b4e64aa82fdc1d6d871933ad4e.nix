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
    flags = { usepkgconfig = false; threadedtestsuite = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hsqml"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2013 Robin KAY";
      maintainer = "komadori@gekkou.co.uk";
      author = "Robin KAY";
      homepage = "http://www.gekkou.co.uk/software/hsqml/";
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
        libs = if system.isWindows && !flags.usepkgconfig
          then [
            (pkgs."QtCore4" or (errorHandler.sysDepError "QtCore4"))
            (pkgs."QtGui4" or (errorHandler.sysDepError "QtGui4"))
            (pkgs."QtScript4" or (errorHandler.sysDepError "QtScript4"))
            (pkgs."QtDeclarative4" or (errorHandler.sysDepError "QtDeclarative4"))
            (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
            ]
          else [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        frameworks = (pkgs.lib).optionals (!(system.isWindows && !flags.usepkgconfig)) ((pkgs.lib).optionals (system.isOsx && !flags.usepkgconfig) [
          (pkgs."QtCore" or (errorHandler.sysDepError "QtCore"))
          (pkgs."QtGui" or (errorHandler.sysDepError "QtGui"))
          (pkgs."QtScript" or (errorHandler.sysDepError "QtScript"))
          (pkgs."QtDeclarative" or (errorHandler.sysDepError "QtDeclarative"))
          ]);
        pkgconfig = (pkgs.lib).optionals (!(system.isWindows && !flags.usepkgconfig)) ((pkgs.lib).optionals (!(system.isOsx && !flags.usepkgconfig)) [
          (pkgconfPkgs."QtScript" or (errorHandler.pkgConfDepError "QtScript"))
          (pkgconfPkgs."QtDeclarative" or (errorHandler.pkgConfDepError "QtDeclarative"))
          ]);
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "hsqml-test1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hsqml" or (errorHandler.buildDepError "hsqml"))
            ];
          buildable = true;
          };
        };
      };
    }