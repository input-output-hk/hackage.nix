{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      usepkgconfig = false;
      threadedtestsuite = true;
      forceghcilib = true;
      useexithook = true;
      };
    package = {
      specVersion = "1.14";
      identifier = { name = "hsqml"; version = "0.3.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2015 Robin KAY";
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
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
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "hsqml-test1" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hsqml" or ((hsPkgs.pkgs-errors).buildDepError "hsqml"))
            ];
          buildable = true;
          };
        };
      };
    }