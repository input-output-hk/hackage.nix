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
    flags = { ghcid = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "commonmark-wikilink"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2022 Sridhar Ratnakumar";
      maintainer = "srid@srid.ca";
      author = "Sridhar Ratnakumar";
      homepage = "";
      url = "";
      synopsis = "Obsidian-friendly commonmark wikilink parser";
      description = "Obsidian-friendly commonmark wikilink parser";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."commonmark" or (errorHandler.buildDepError "commonmark"))
          (hsPkgs."commonmark-pandoc" or (errorHandler.buildDepError "commonmark-pandoc"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."uri-encode" or (errorHandler.buildDepError "uri-encode"))
          (hsPkgs."url-slug" or (errorHandler.buildDepError "url-slug"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."commonmark" or (errorHandler.buildDepError "commonmark"))
            (hsPkgs."commonmark-pandoc" or (errorHandler.buildDepError "commonmark-pandoc"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."uri-encode" or (errorHandler.buildDepError "uri-encode"))
            (hsPkgs."url-slug" or (errorHandler.buildDepError "url-slug"))
            (hsPkgs."commonmark-simple" or (errorHandler.buildDepError "commonmark-simple"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          ] ++ pkgs.lib.optional (!flags.ghcid) (hsPkgs."commonmark-wikilink" or (errorHandler.buildDepError "commonmark-wikilink"));
          buildable = true;
        };
      };
    };
  }