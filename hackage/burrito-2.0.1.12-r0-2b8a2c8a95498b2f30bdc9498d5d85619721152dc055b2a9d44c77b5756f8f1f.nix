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
    flags = { pedantic = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "burrito"; version = "2.0.1.12"; };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Parse and render URI templates.";
      description = "Burrito is a Haskell library for parsing and rendering URI templates.\n\nAccording to [RFC 6570](https://tools.ietf.org/html/rfc6570): \"A URI Template\nis a compact sequence of characters for describing a range of Uniform\nResource Identifiers through variable expansion.\" Burrito implements URI\ntemplates according to the specification in that RFC.\n\nThe term \"uniform resource identifiers\" (URI) is often used interchangeably\nwith other related terms like \"internationalized resource identifier\" (IRI),\n\"uniform resource locator\" (URL), and \"uniform resource name\" (URN). Burrito\ncan be used for all of these. If you want to get technical, its input must be\na valid IRI and its output will be a valid URI or URN.\n\nAlthough Burrito is primarily intended to be used with HTTP and HTTPS URIs,\nit should work with other schemes as well.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "burrito-test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."burrito" or (errorHandler.buildDepError "burrito"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }