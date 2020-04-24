{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      usepkgconfig = false;
      threadedtestsuite = true;
      forceghcilib = true;
      };
    package = {
      specVersion = "1.14";
      identifier = { name = "hsqml"; version = "0.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2014 Robin KAY";
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        libs = if system.isWindows && !flags.usepkgconfig
          then [
            (pkgs."QtCore4" or ((hsPkgs.pkgs-errors).sysDepError "QtCore4"))
            (pkgs."QtGui4" or ((hsPkgs.pkgs-errors).sysDepError "QtGui4"))
            (pkgs."QtScript4" or ((hsPkgs.pkgs-errors).sysDepError "QtScript4"))
            (pkgs."QtDeclarative4" or ((hsPkgs.pkgs-errors).sysDepError "QtDeclarative4"))
            (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
            ]
          else [
            (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
            ];
        frameworks = (pkgs.lib).optionals (!(system.isWindows && !flags.usepkgconfig)) ((pkgs.lib).optionals (system.isOsx && !flags.usepkgconfig) [
          (pkgs."QtCore" or ((hsPkgs.pkgs-errors).sysDepError "QtCore"))
          (pkgs."QtGui" or ((hsPkgs.pkgs-errors).sysDepError "QtGui"))
          (pkgs."QtScript" or ((hsPkgs.pkgs-errors).sysDepError "QtScript"))
          (pkgs."QtDeclarative" or ((hsPkgs.pkgs-errors).sysDepError "QtDeclarative"))
          ]);
        pkgconfig = (pkgs.lib).optionals (!(system.isWindows && !flags.usepkgconfig)) ((pkgs.lib).optionals (!(system.isOsx && !flags.usepkgconfig)) [
          (pkgconfPkgs."QtScript" or ((hsPkgs.pkgs-errors).pkgConfDepError "QtScript"))
          (pkgconfPkgs."QtDeclarative" or ((hsPkgs.pkgs-errors).pkgConfDepError "QtDeclarative"))
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
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
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