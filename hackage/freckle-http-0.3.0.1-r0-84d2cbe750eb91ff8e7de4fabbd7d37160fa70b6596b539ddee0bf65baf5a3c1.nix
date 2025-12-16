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
      identifier = { name = "freckle-http"; version = "0.3.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Freckle Education";
      author = "";
      homepage = "https://github.com/freckle/freckle-http#readme";
      url = "";
      synopsis = "Toolkit for making HTTP requests";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Blammo" or (errorHandler.buildDepError "Blammo"))
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."annotated-exception" or (errorHandler.buildDepError "annotated-exception"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."freckle-memcached" or (errorHandler.buildDepError "freckle-memcached"))
          (hsPkgs."hs-opentelemetry-api" or (errorHandler.buildDepError "hs-opentelemetry-api"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-link-header" or (errorHandler.buildDepError "http-link-header"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."memcache" or (errorHandler.buildDepError "memcache"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."monad-validate" or (errorHandler.buildDepError "monad-validate"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."freckle-http" or (errorHandler.buildDepError "freckle-http"))
            (hsPkgs."freckle-prelude" or (errorHandler.buildDepError "freckle-prelude"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-expectations-json" or (errorHandler.buildDepError "hspec-expectations-json"))
            (hsPkgs."hspec-expectations-lifted" or (errorHandler.buildDepError "hspec-expectations-lifted"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
          buildable = true;
        };
      };
    };
  }