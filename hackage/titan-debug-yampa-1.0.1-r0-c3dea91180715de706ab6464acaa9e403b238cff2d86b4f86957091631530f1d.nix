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
    flags = { examples = false; bearriver = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "titan-debug-yampa"; version = "1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "All Rights Reserved (c) 2018 - 2020 Keera Studios Ltd\n\nAll Rights Reserved (c) 2015 - 2017 Ivan Perez Dominguez";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez";
      homepage = "http://github.com/keera-studios/haskell-titan";
      url = "";
      synopsis = "Testing Infrastructure for Temporal AbstractioNs - Interactive Yampa debugging layer.";
      description = "Yampa debugger that allows you to run an FRP program and control its\nexecution.\n\nTITAN (Testing Infrastructure for Temporal AbstractioNs) is a framework to\ntest and debug FRP programs. It allows you to write temporal unit tests, check\nthem, QuickCheck them, run FRP programs with a fine-tuned debugger, obtain\ninformation to replicate tests, and follow and control the execution of a\nYampa program from an interactive GUI.\n\nThis library provides a replacement function for Yampa's standard simulation\nfunction (@reactimate@), enabling debugging.\n\nIt also provides a definition of the standard communication interface with\nthe debugging GUI, and a default implementation of a communication bridge\nsuitable for standalone desktop applications using TCP sockets.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."IfElse" or (buildDepError "IfElse"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-bsd" or (buildDepError "network-bsd"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ] ++ (if flags.bearriver
          then [ (hsPkgs."bearriver" or (buildDepError "bearriver")) ]
          else [ (hsPkgs."Yampa" or (buildDepError "Yampa")) ]);
        buildable = true;
        };
      exes = {
        "titan-debug-yampa-example-bouncing-ball" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."SDL" or (buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or (buildDepError "SDL-gfx"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            (hsPkgs."titan-debug-yampa" or (buildDepError "titan-debug-yampa"))
            ];
          buildable = if !flags.examples || !flags.bearriver
            then false
            else true;
          };
        };
      };
    }