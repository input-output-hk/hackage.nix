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
      identifier = { name = "attoparsec-expr"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sebastiaan Visser <haskell@fvisser.nl>";
      author = "Daan Leijen, Paolo Martini";
      homepage = "";
      url = "";
      synopsis = "Port of parsec's expression parser to attoparsec.";
      description = "Port of parsec's expression parser to attoparsec.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      };
    }