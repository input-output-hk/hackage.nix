let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usepkgconfig = false; devel = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hsqml-datamodel"; version = "0.2.0.1"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hsqml" or (buildDepError "hsqml"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        libs = if system.isWindows && !flags.usepkgconfig
          then [
            (pkgs."Qt5Core" or (sysDepError "Qt5Core"))
            (pkgs."Qt5Gui" or (sysDepError "Qt5Gui"))
            (pkgs."Qt5Widgets" or (sysDepError "Qt5Widgets"))
            (pkgs."Qt5Qml" or (sysDepError "Qt5Qml"))
            (pkgs."Qt5Quick" or (sysDepError "Qt5Quick"))
            (pkgs."stdc++" or (sysDepError "stdc++"))
            ]
          else [ (pkgs."stdc++" or (sysDepError "stdc++")) ];
        frameworks = (pkgs.lib).optionals (!(system.isWindows && !flags.usepkgconfig)) ((pkgs.lib).optionals (system.isOsx && !flags.usepkgconfig) [
          (pkgs."QtCore" or (sysDepError "QtCore"))
          (pkgs."QtGui" or (sysDepError "QtGui"))
          (pkgs."QtWidgets" or (sysDepError "QtWidgets"))
          (pkgs."QtQml" or (sysDepError "QtQml"))
          (pkgs."QtQuick" or (sysDepError "QtQuick"))
          ]);
        pkgconfig = (pkgs.lib).optionals (!(system.isWindows && !flags.usepkgconfig)) ((pkgs.lib).optionals (!(system.isOsx && !flags.usepkgconfig)) [
          (pkgconfPkgs."Qt5Core" or (pkgConfDepError "Qt5Core"))
          (pkgconfPkgs."Qt5Gui" or (pkgConfDepError "Qt5Gui"))
          (pkgconfPkgs."Qt5Widgets" or (pkgConfDepError "Qt5Widgets"))
          (pkgconfPkgs."Qt5Qml" or (pkgConfDepError "Qt5Qml"))
          (pkgconfPkgs."Qt5Quick" or (pkgConfDepError "Qt5Quick"))
          ]);
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }