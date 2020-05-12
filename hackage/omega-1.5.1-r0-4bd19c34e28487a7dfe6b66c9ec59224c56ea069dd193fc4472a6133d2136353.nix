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
      identifier = { name = "omega"; version = "1.5.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ggreif@gmail.com";
      author = "Tim Sheard, his students and heisenbug";
      homepage = "http://code.google.com/p/omega/";
      url = "";
      synopsis = "A purely functional programming language and a proof system";
      description = "Omega is a purely functional programming language (like Haskell)\nand it also enables built-in proofs about program correctness\nemploying the Curry-Howard correspondence. Powerful metaprogramming\nfacilities and extensible syntax for data make programming a less\nverbose experience.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "omega" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }