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
    flags = { usepkgconfig = false; threadedtestsuite = true; };
    package = {
      specVersion = "1.14";
      identifier = { name = "hsqml"; version = "0.2.0.2"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        libs = if system.isWindows && !flags.usepkgconfig
          then [
            (pkgs."QtCore4" or (sysDepError "QtCore4"))
            (pkgs."QtGui4" or (sysDepError "QtGui4"))
            (pkgs."QtScript4" or (sysDepError "QtScript4"))
            (pkgs."QtDeclarative4" or (sysDepError "QtDeclarative4"))
            (pkgs."stdc++" or (sysDepError "stdc++"))
            ]
          else [ (pkgs."stdc++" or (sysDepError "stdc++")) ];
        frameworks = (pkgs.lib).optionals (!(system.isWindows && !flags.usepkgconfig)) ((pkgs.lib).optionals (system.isOsx && !flags.usepkgconfig) [
          (pkgs."QtCore" or (sysDepError "QtCore"))
          (pkgs."QtGui" or (sysDepError "QtGui"))
          (pkgs."QtScript" or (sysDepError "QtScript"))
          (pkgs."QtDeclarative" or (sysDepError "QtDeclarative"))
          ]);
        pkgconfig = (pkgs.lib).optionals (!(system.isWindows && !flags.usepkgconfig)) ((pkgs.lib).optionals (!(system.isOsx && !flags.usepkgconfig)) [
          (pkgconfPkgs."QtScript" or (pkgConfDepError "QtScript"))
          (pkgconfPkgs."QtDeclarative" or (pkgConfDepError "QtDeclarative"))
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
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."hsqml" or (buildDepError "hsqml"))
            ];
          };
        };
      };
    }