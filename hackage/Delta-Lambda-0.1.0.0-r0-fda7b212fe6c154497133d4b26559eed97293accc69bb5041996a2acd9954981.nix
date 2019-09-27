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
    flags = { debug = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Delta-Lambda"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "listofoptions@gmail.com";
      author = "James M";
      homepage = "";
      url = "";
      synopsis = "A demonstration interpreter for type system delta-lambda (of N.G. De-bruijn)";
      description = "A demonstration package for the type system delta-lambda (of N.G. De-bruijn)\nin ~1000 lines of haskell.\nthis is at the moment exceptionally ALPHA level software.\nno tests for the validity of the type checker (only the\ntype synthesizer), or the parser, or the repl, etc...\nthere are dragons in here (soon to be tamed), and lots\nof them!\ntodo: profiling, unit testing, formal verification of type correctness\nadequacy proof of the implemented type system.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Delta-Lambda" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."cpphs" or (buildDepError "cpphs"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."options" or (buildDepError "options"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wl-pprint" or (buildDepError "wl-pprint"))
            ];
          buildable = true;
          };
        };
      };
    }