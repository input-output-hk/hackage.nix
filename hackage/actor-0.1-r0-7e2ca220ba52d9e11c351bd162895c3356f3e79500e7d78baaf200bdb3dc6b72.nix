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
      identifier = { name = "actor"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "martin.sulzmann@gmail.com";
      author = "Martin Sulzmann";
      homepage = "http://sulzmann.blogspot.com/2008/10/actors-with-multi-headed-receive.html";
      url = "";
      synopsis = "Actors with multi-headed receive clauses";
      description = "A Haskell library implementing\n\"Actors with Multi-Headed Message Receive Patterns\"\nCOORDINATION'08";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }