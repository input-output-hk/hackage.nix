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
    flags = { usepkgconfig = false; devel = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hsqml-datamodel"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marcin.jan.mrotek@gmail.com";
      author = "Marcin Mrotek";
      homepage = "https://github.com/marcinmrotek/hsqml-datamodel";
      url = "";
      synopsis = "HsQML (Qt5) data model.";
      description = "HsQML (Qt5) data model. Use any collection (actually, any (Int -> IO a) action) of single constructor data types as a model for use with QML views.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hsqml" or (errorHandler.buildDepError "hsqml"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
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
        frameworks = (pkgs.lib).optionals (!(system.isWindows && !flags.usepkgconfig)) ((pkgs.lib).optionals (system.isOsx && !flags.usepkgconfig) [
          (pkgs."QtCore" or (errorHandler.sysDepError "QtCore"))
          (pkgs."QtGui" or (errorHandler.sysDepError "QtGui"))
          (pkgs."QtWidgets" or (errorHandler.sysDepError "QtWidgets"))
          (pkgs."QtQml" or (errorHandler.sysDepError "QtQml"))
          (pkgs."QtQuick" or (errorHandler.sysDepError "QtQuick"))
          ]);
        pkgconfig = (pkgs.lib).optionals (!(system.isWindows && !flags.usepkgconfig)) ((pkgs.lib).optionals (!(system.isOsx && !flags.usepkgconfig)) [
          (pkgconfPkgs."Qt5Core" or (errorHandler.pkgConfDepError "Qt5Core"))
          (pkgconfPkgs."Qt5Gui" or (errorHandler.pkgConfDepError "Qt5Gui"))
          (pkgconfPkgs."Qt5Widgets" or (errorHandler.pkgConfDepError "Qt5Widgets"))
          (pkgconfPkgs."Qt5Qml" or (errorHandler.pkgConfDepError "Qt5Qml"))
          (pkgconfPkgs."Qt5Quick" or (errorHandler.pkgConfDepError "Qt5Quick"))
          ]);
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      };
    }