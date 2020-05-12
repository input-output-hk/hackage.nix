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
      identifier = { name = "bencode"; version = "0.6.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2005-2009, David Himmelstrup,\n(c) 2006 Lemmih <lemmih@gmail.com>,\n(c) 2005 Jesper Louis Andersen <jlouis@mongers.org>";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Lemmih <lemmih@gmail.com>,\nJesper Louis Andersen <jlouis@mongers.org>,\nChristopher Reichert <creichert07@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Parsers and printers for bencoded data.";
      description = "Parsers and printers for bencoded data. Bencode (pronounced like B encode)\nis the encoding used by the peer-to-peer file sharing system BitTorrent for\nstoring and transmitting loosely structured data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."bencode" or (errorHandler.buildDepError "bencode"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }