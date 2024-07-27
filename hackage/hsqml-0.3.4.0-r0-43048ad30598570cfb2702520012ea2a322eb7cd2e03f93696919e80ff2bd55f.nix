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
    flags = {
      usepkgconfig = false;
      threadedtestsuite = true;
      forceghcilib = true;
      useexithook = true;
      enableqmldebugging = false;
    };
    package = {
      specVersion = "1.12";
      identifier = { name = "hsqml"; version = "0.3.4.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2016 Robin KAY";
      maintainer = "komadori@gekkou.co.uk";
      author = "Robin KAY";
      homepage = "http://www.gekkou.co.uk/software/hsqml/";
      url = "";
      synopsis = "Haskell binding for Qt Quick";
      description = "A Haskell binding for Qt Quick, a cross-platform framework for creating\ngraphical user interfaces. For further information on installing and using\nthis library, please see the project's web site.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        libs = if system.isWindows && !flags.usepkgconfig
          then [
            (pkgs."Qt5Core" or (errorHandler.sysDepError "Qt5Core"))
            (pkgs."Qt5Gui" or (errorHandler.sysDepError "Qt5Gui"))
            (pkgs."Qt5Widgets" or (errorHandler.sysDepError "Qt5Widgets"))
            (pkgs."Qt5Qml" or (errorHandler.sysDepError "Qt5Qml"))
            (pkgs."Qt5Quick" or (errorHandler.sysDepError "Qt5Quick"))
            (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          ]
          else [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        frameworks = pkgs.lib.optionals (!(system.isWindows && !flags.usepkgconfig)) (pkgs.lib.optionals (system.isOsx && !flags.usepkgconfig) [
          (pkgs."QtCore" or (errorHandler.sysDepError "QtCore"))
          (pkgs."QtGui" or (errorHandler.sysDepError "QtGui"))
          (pkgs."QtWidgets" or (errorHandler.sysDepError "QtWidgets"))
          (pkgs."QtQml" or (errorHandler.sysDepError "QtQml"))
          (pkgs."QtQuick" or (errorHandler.sysDepError "QtQuick"))
        ]);
        pkgconfig = pkgs.lib.optionals (!(system.isWindows && !flags.usepkgconfig)) (pkgs.lib.optionals (!(system.isOsx && !flags.usepkgconfig)) [
          (pkgconfPkgs."Qt5Core" or (errorHandler.pkgConfDepError "Qt5Core"))
          (pkgconfPkgs."Qt5Gui" or (errorHandler.pkgConfDepError "Qt5Gui"))
          (pkgconfPkgs."Qt5Widgets" or (errorHandler.pkgConfDepError "Qt5Widgets"))
          (pkgconfPkgs."Qt5Qml" or (errorHandler.pkgConfDepError "Qt5Qml"))
          (pkgconfPkgs."Qt5Quick" or (errorHandler.pkgConfDepError "Qt5Quick"))
        ]);
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      tests = {
        "hsqml-test1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
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