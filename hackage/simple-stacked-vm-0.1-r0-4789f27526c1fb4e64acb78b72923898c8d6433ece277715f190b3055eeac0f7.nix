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
      specVersion = "1.6";
      identifier = { name = "simple-stacked-vm"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya V. Portnov";
      homepage = "";
      url = "";
      synopsis = "Simple stacked virtual machine: assembler, disassembler, bytecode interpreter";
      description = "This is a simple stacked virtual machine. It works like Forth or JVM.\nThis package includes declarations of data types, assembler, disassembler,\nand bytecode interpreter.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."binary-state" or (errorHandler.buildDepError "binary-state"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      exes = { "ssvm" = { buildable = true; }; };
      };
    }