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
      identifier = { name = "x86-64bit"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divipp@gmail.com";
      author = "Péter Diviánszky";
      homepage = "https://github.com/divipp/x86-64";
      url = "";
      synopsis = "Runtime code generation for x86 64 bit machine code";
      description = "The primary goal of x86-64bit is to provide a lightweight assembler for machine generated 64 bit x86 assembly instructions. See README.md for further details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."tardis" or (errorHandler.buildDepError "tardis"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
        buildable = true;
        };
      tests = {
        "test-x86-64bit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
            (hsPkgs."tardis" or (errorHandler.buildDepError "tardis"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
          buildable = true;
          };
        };
      };
    }