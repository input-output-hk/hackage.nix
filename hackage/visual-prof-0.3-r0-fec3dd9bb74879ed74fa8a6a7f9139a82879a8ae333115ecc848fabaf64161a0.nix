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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "visual-prof"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "djvelkov@gmail.com";
      author = "Daniel Velkov";
      homepage = "http://github.com/djv/VisualProf";
      url = "";
      synopsis = "Create a visual profile of a program's source code";
      description = "visual-prof profiles your Haskell program and generates a html file containing\nits source code with parts of the code highlighted in different\ncolors depending on the fraction of the running time that they take.\nvisual-prof gives you an easy way to find places for optimization in your code.\n\nUsage:\n\n> visual-prof -px A/B/C.hs run \"arg1 arg2\"\n\nThis will profile the C.hs file used by run.hs which contains the Main module\nof your project. Arguments to ./run are passed as shown (arg1, arg2,...). The parameters\nshould be given in that order.\n\nThe simplest way to run it is:\n\n> visual-prof -px test.hs test\n\nwhich will generate a profile for the file test.hs (which needs to have a main function)";
      buildType = "Simple";
      };
    components = {
      exes = {
        "visual-prof" = {
          depends = [
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."regexpr" or (buildDepError "regexpr"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."split" or (buildDepError "split"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."containers" or (buildDepError "containers"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ]);
          buildable = true;
          };
        };
      };
    }