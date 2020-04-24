{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usepkgconfig = false; devel = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hsqml-datamodel"; version = "0.2.0.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hsqml" or ((hsPkgs.pkgs-errors).buildDepError "hsqml"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        libs = if system.isWindows && !flags.usepkgconfig
          then [
            (pkgs."Qt5Core" or ((hsPkgs.pkgs-errors).sysDepError "Qt5Core"))
            (pkgs."Qt5Gui" or ((hsPkgs.pkgs-errors).sysDepError "Qt5Gui"))
            (pkgs."Qt5Widgets" or ((hsPkgs.pkgs-errors).sysDepError "Qt5Widgets"))
            (pkgs."Qt5Qml" or ((hsPkgs.pkgs-errors).sysDepError "Qt5Qml"))
            (pkgs."Qt5Quick" or ((hsPkgs.pkgs-errors).sysDepError "Qt5Quick"))
            (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
            ]
          else [
            (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
            ];
        frameworks = (pkgs.lib).optionals (!(system.isWindows && !flags.usepkgconfig)) ((pkgs.lib).optionals (system.isOsx && !flags.usepkgconfig) [
          (pkgs."QtCore" or ((hsPkgs.pkgs-errors).sysDepError "QtCore"))
          (pkgs."QtGui" or ((hsPkgs.pkgs-errors).sysDepError "QtGui"))
          (pkgs."QtWidgets" or ((hsPkgs.pkgs-errors).sysDepError "QtWidgets"))
          (pkgs."QtQml" or ((hsPkgs.pkgs-errors).sysDepError "QtQml"))
          (pkgs."QtQuick" or ((hsPkgs.pkgs-errors).sysDepError "QtQuick"))
          ]);
        pkgconfig = (pkgs.lib).optionals (!(system.isWindows && !flags.usepkgconfig)) ((pkgs.lib).optionals (!(system.isOsx && !flags.usepkgconfig)) [
          (pkgconfPkgs."Qt5Core" or ((hsPkgs.pkgs-errors).pkgConfDepError "Qt5Core"))
          (pkgconfPkgs."Qt5Gui" or ((hsPkgs.pkgs-errors).pkgConfDepError "Qt5Gui"))
          (pkgconfPkgs."Qt5Widgets" or ((hsPkgs.pkgs-errors).pkgConfDepError "Qt5Widgets"))
          (pkgconfPkgs."Qt5Qml" or ((hsPkgs.pkgs-errors).pkgConfDepError "Qt5Qml"))
          (pkgconfPkgs."Qt5Quick" or ((hsPkgs.pkgs-errors).pkgConfDepError "Qt5Quick"))
          ]);
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }