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
      identifier = { name = "bencode"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2005-2009, David Himmelstrup,\n2006 Lemmih <lemmih@gmail.com>,\n2005 Jesper Louis Andersen <jlouis@mongers.org>";
      maintainer = "Christopher Reichert <creichert07@gmail.com>";
      author = "Lemmih (lemmih@gmail.com), Jesper Louis Andersen";
      homepage = "";
      url = "";
      synopsis = "Parser and printer for bencoded data.";
      description = "Parser and printer for bencoded data.\n\nBencode (pronounced like B encode) is the encoding used by the\npeer-to-peer file sharing system BitTorrent for storing and\ntransmitting loosely structured data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
        buildable = true;
        };
      };
    }