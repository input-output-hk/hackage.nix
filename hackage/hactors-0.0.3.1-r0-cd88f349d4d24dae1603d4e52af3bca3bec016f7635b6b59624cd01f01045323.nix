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
      identifier = { name = "hactors"; version = "0.0.3.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Heka Treep <zena.treep@gmail.com>";
      author = "Heka Treep";
      homepage = "https://github.com/treep/hactors";
      url = "";
      synopsis = "Practical actors for Haskell.";
      description = "This library is about to implement the Erlang-like actor model on top of the\nGHC's concurrency.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
    };
  }