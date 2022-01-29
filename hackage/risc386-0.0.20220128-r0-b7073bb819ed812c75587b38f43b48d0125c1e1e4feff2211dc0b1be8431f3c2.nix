{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "risc386"; version = "0.0.20220128"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andreas Abel <andreas.abel@ifi.lmu.de>";
      author = "Andreas Abel with contributions by Robert Grabowski and Ulrich Schoepp";
      homepage = "https://github.com/andreasabel/risc386";
      url = "";
      synopsis = "Reduced instruction set i386 simulator";
      description = "risc386 is a symbolic Intel(R) 386 assembler interpreter which\nallows infinitely many registers (temporaries).  Its purpose is\nto debug the output of a MiniJava compiler (from Andrew Appel's\nbook, Modern Compiler Implementation in JAVA) before register\nallocation has been performed.\n\nrisc386 supports only a small fragment of i386 instructions.\nIt expects its input to be a list of procedures in .intel_syntax\neach of which is started by a label and terminated by a return\nstatement.\n\nControl flow is restricted, so, only jumps to procedure-local\nlabels are allowed.  Reading from an uninitialized memory location\nwill lead to an exception.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "risc386" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
            (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
            ];
          buildable = true;
          };
        };
      };
    }