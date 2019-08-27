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
    flags = {
      usepkgconfig = false;
      threadedtestsuite = true;
      forceghcilib = true;
      useexithook = true;
      enableqmldebugging = false;
      };
    package = {
      specVersion = "1.24";
      identifier = { name = "hsqml"; version = "0.3.5.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2018 Robin KAY";
      maintainer = "komadori@gekkou.co.uk";
      author = "Robin KAY";
      homepage = "http://www.gekkou.co.uk/software/hsqml/";
      url = "";
      synopsis = "Haskell binding for Qt Quick";
      description = "A Haskell binding for Qt Quick, a cross-platform framework for creating\ngraphical user interfaces. For further information on installing and using\nthis library, please see the project's web site.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.template-haskell or (pkgs.buildPackages.template-haskell or (buildToolDepError "template-haskell")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (buildToolDepError "filepath")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
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
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        };
      tests = {
        "hsqml-test1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."hsqml" or (buildDepError "hsqml"))
            ];
          };
        };
      };
    }