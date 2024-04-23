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
      identifier = { name = "join"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "martin.sulzmann@gmail.com";
      author = "Martin Sulzmann";
      homepage = "http://sulzmann.blogspot.com/2008/12/parallel-join-patterns-with-guards-and.html";
      url = "";
      synopsis = "Parallel Join Patterns with Guards and Propagation";
      description = "Parallel Join Patterns with Guards and Propagation";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."multisetrewrite" or (errorHandler.buildDepError "multisetrewrite"))
        ];
        buildable = true;
      };
    };
  }