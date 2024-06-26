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
      specVersion = "1.2";
      identifier = { name = "hamtmap"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kevin Wu Won <exclipy@gmail.com>";
      author = "Kevin Wu Won";
      homepage = "https://github.com/exclipy/pdata";
      url = "";
      synopsis = "A purely functional and persistent hash map";
      description = "A port of Clojure's efficient persistent and hash\nmap data structure to Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ];
        buildable = true;
      };
    };
  }