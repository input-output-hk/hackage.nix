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
      specVersion = "1.18";
      identifier = { name = "cassette"; version = "0.2.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Mathieu Boespflug <m@boespfl.ug>";
      author = "Mathieu Boespflug";
      homepage = "";
      url = "";
      synopsis = "Combinators to simultaneously define parsers and pretty printers";
      description = "Proof of concept.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
        ];
        buildable = true;
      };
    };
  }