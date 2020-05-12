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
      specVersion = "2.0";
      identifier = { name = "ascii-predicates"; version = "1.0.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/ascii";
      url = "";
      synopsis = "Various categorizations of ASCII characters";
      description = "This package provides a variety of predicates on the ASCII character set.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ascii-char" or (errorHandler.buildDepError "ascii-char"))
          ];
        buildable = true;
        };
      };
    }