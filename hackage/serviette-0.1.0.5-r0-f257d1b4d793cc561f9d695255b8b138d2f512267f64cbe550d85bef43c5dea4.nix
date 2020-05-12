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
      identifier = { name = "serviette"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2017 Sasa Bogicevic";
      maintainer = "brutallesale@gmail.com";
      author = "Sasa Bogicevic ";
      homepage = "https://github.com/v0d1ch/serviette#readme";
      url = "";
      synopsis = "JSON to Sql ";
      description = "Use json to generate simple sql queries. I needed this for the work project and decided to implement it also                             in haskell. This could be used to query the database directly from frontend.  ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
          ];
        buildable = true;
        };
      };
    }