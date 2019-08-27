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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "risc386"; version = "0.0.20130719"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andreas Abel <andreas.abel@ifi.lmu.de>";
      author = "Andreas Abel with contributions by Robert Grabowski and Ulrich Schoepp";
      homepage = "http://www2.tcs.ifi.lmu.de/~abel/";
      url = "";
      synopsis = "Reduced instruction set i386 simulator";
      description = "risc386 is a symbolic Intel(R) 386 assembler interpreter which\nallows infinitely many registers (temporaries).  Its purpose is\nto debug the output of a MiniJava compiler (from Andrew Appel's\nbook, Modern Compiler Implementation in JAVA) before register\nallocation has been performed.\n\nrisc386 supports only a small fragment of i386 instructions.\nIt expects its input to be a list of procedures in .intel_syntax\neach of which is started by a label and terminated by a return\nstatement.\n\nControl flow is restricted, so, only jumps to procedure-local\nlabels are allowed.  Reading from an uninitialized memory location\nwill lead to an exception.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "risc386" = {
          depends = [
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (buildToolDepError "happy")))
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (buildToolDepError "alex")))
            ];
          };
        };
      };
    }