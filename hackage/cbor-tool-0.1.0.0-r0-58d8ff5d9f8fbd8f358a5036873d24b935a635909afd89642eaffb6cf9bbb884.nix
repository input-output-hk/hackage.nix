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
      identifier = { name = "cbor-tool"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015-2017 Duncan Coutts,\n2015-2017 Well-Typed LLP,\n2015 IRIS Connect Ltd";
      maintainer = "duncan@community.haskell.org, ben@smart-cactus.org";
      author = "Duncan Coutts";
      homepage = "https://github.com/well-typed/cborg";
      url = "";
      synopsis = "A tool for manipulating CBOR.";
      description = "A tool for dumping and converting CBOR-encoded data.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cbor-tool" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."cborg" or (errorHandler.buildDepError "cborg"))
            (hsPkgs."cborg-json" or (errorHandler.buildDepError "cborg-json"))
            ];
          buildable = true;
          };
        };
      };
    }