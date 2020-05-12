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
      identifier = { name = "hscope"; version = "0.4.3"; };
      license = "BSD-3-Clause";
      copyright = "Boris Sukholitko <boriss@gmail.com>";
      maintainer = "Boris Sukholitko <boriss@gmail.com>";
      author = "Boris Sukholitko <boriss@gmail.com>";
      homepage = "https://github.com/bosu/hscope";
      url = "";
      synopsis = "cscope like browser for Haskell code";
      description = "hscope is a partial cscope line oriented mode reimplementation for Haskell code.\nCurrently it supports finding the definition and callers of the function, types.\nAlso works searching for files and in files.\nSee hscope --help for available options.\nBeing cscope-compatible gives Vim integration for free. Use :set cscopeprg\nto configure hscope as cscope replacement for haskell files.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hscope" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pure-cdb" or (errorHandler.buildDepError "pure-cdb"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
            ];
          buildable = true;
          };
        };
      tests = {
        "Build" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-simple" or (errorHandler.buildDepError "test-simple"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Unixutils" or (errorHandler.buildDepError "Unixutils"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }