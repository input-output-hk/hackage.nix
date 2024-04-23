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
      specVersion = "1.12";
      identifier = { name = "cassava-generic"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Migamake '2020";
      maintainer = "mjgajda@migamake.com";
      author = "Michał J. Gajda";
      homepage = "https://github.com/mjgajda/cassava-generic#readme";
      url = "";
      synopsis = "Cassave instances for functor-like datatypes like `Either String a`.";
      description = "Please see the README on GitHub at <https://github.com/mjgajda/cassava-generics#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }