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
      identifier = { name = "haskell-disque"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Arek Czarnik";
      maintainer = "arekczarnik@gmail.com";
      author = "Arek Czarnik";
      homepage = "https://github.com/ArekCzarnik/haskell-disque#readme";
      url = "";
      synopsis = "Client library for the Disque datastore";
      description = "Disque is an ongoing experiment to build a distributed, in-memory, message broker.Its goal is to capture the essence of the \"Redis as a jobs queue\" use case, which is usually implemented using blocking list operations, and move it into an ad-hoc, self-contained, scalable, and fault tolerant design, with simple to understand properties and guarantees, but still resembling Redis in terms of simplicity, performance, and implementation as a C non-blocking networked server. This library is a Haskell client for the Disque datastore.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      exes = {
        "haskell-disque-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-disque" or (errorHandler.buildDepError "haskell-disque"))
          ];
          buildable = true;
        };
      };
      tests = {
        "haskell-disque-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-disque" or (errorHandler.buildDepError "haskell-disque"))
          ];
          buildable = true;
        };
      };
    };
  }