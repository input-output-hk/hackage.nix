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
      specVersion = "3.8";
      identifier = { name = "hsqml"; version = "0.3.6.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2018 Robin KAY";
      maintainer = "saschaprolic@googlemail.com";
      author = "Robin KAY";
      homepage = "http://www.gekkou.co.uk/software/hsqml/";
      url = "";
      synopsis = "Haskell binding for Qt Quick";
      description = "A Haskell binding for Qt Quick, a cross-platform framework for creating\ngraphical user interfaces. For further information on installing and using\nthis library, please see the project's web site.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.template-haskell or (pkgs.pkgsBuildBuild.template-haskell or (errorHandler.setupDepError "template-haskell")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        libs = if system.isWindows && !flags.usepkgconfig
          then [
            (pkgs."Qt5Core" or (errorHandler.sysDepError "Qt5Core"))
            (pkgs."Qt5Gui" or (errorHandler.sysDepError "Qt5Gui"))
            (pkgs."Qt5Widgets" or (errorHandler.sysDepError "Qt5Widgets"))
            (pkgs."Qt5Network" or (errorHandler.sysDepError "Qt5Network"))
            (pkgs."Qt5Qml" or (errorHandler.sysDepError "Qt5Qml"))
            (pkgs."Qt5Quick" or (errorHandler.sysDepError "Qt5Quick"))
            (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          ]
          else [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        frameworks = pkgs.lib.optionals (!(system.isWindows && !flags.usepkgconfig)) (pkgs.lib.optionals (system.isOsx && !flags.usepkgconfig) [
          (pkgs."QtCore" or (errorHandler.sysDepError "QtCore"))
          (pkgs."QtGui" or (errorHandler.sysDepError "QtGui"))
          (pkgs."QtWidgets" or (errorHandler.sysDepError "QtWidgets"))
          (pkgs."QtNetwork" or (errorHandler.sysDepError "QtNetwork"))
          (pkgs."QtQml" or (errorHandler.sysDepError "QtQml"))
          (pkgs."QtQuick" or (errorHandler.sysDepError "QtQuick"))
        ]);
        pkgconfig = pkgs.lib.optionals (!(system.isWindows && !flags.usepkgconfig)) (pkgs.lib.optionals (!(system.isOsx && !flags.usepkgconfig)) [
          (pkgconfPkgs."Qt5Core" or (errorHandler.pkgConfDepError "Qt5Core"))
          (pkgconfPkgs."Qt5Gui" or (errorHandler.pkgConfDepError "Qt5Gui"))
          (pkgconfPkgs."Qt5Widgets" or (errorHandler.pkgConfDepError "Qt5Widgets"))
          (pkgconfPkgs."Qt5Network" or (errorHandler.pkgConfDepError "Qt5Network"))
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