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
      identifier = { name = "nanoparsec"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011  Maciej Piechotka";
      maintainer = "uzytkownik2@gmail.com";
      author = "Maciej Piechotka";
      homepage = "";
      url = "";
      synopsis = "An implementation of attoparsec-like parser around list-like";
      description = "An implementation of attoparsec-like parser around list-like";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
        ];
        buildable = true;
      };
    };
  }