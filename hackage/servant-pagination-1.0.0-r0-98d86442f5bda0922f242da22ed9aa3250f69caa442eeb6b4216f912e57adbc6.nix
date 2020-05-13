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
    flags = { examples = false; };
    package = {
      specVersion = "1.20";
      identifier = { name = "servant-pagination"; version = "1.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2018 Chordify";
      maintainer = "Chordify <haskelldevelopers@chordify.net>, Matthias Benkort <matthias.benkort@gmail.com>";
      author = "Chordify";
      homepage = "https://github.com/chordify/haskell-servant-pagination";
      url = "";
      synopsis = "Type-safe pagination for Servant APIs";
      description = "This module offers opinionated helpers to declare a type-safe and a flexible pagination\nmecanism for Servant APIs. This design, inspired by Heroku's API, provides a small framework\nto communicate about a possible pagination feature of an endpoint, enabling a client to\nconsume the API in different fashions (pagination with offset / limit, endless scroll using last\nreferenced resources, ascending and descending ordering, etc.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          ];
        buildable = true;
        };
      exes = {
        "servant-pagination-simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-pagination" or (errorHandler.buildDepError "servant-pagination"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "servant-pagination-complex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-pagination" or (errorHandler.buildDepError "servant-pagination"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      };
    }