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
      specVersion = "1.6";
      identifier = { name = "mediawiki2latex"; version = "7.9"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Dirk Hünniger <dirk.hunniger@googlemail.com>";
      author = "Dirk Hünniger <dirk.hunniger@googlemail.com>";
      homepage = "http://sourceforge.net/projects/wb2pdf/";
      url = "";
      synopsis = "Convert MediaWiki text to LaTeX";
      description = "Wb2pdf converts MediaWiki markup to LaTeX and PDF.\nSo it provides and export from MediaWiki to LaTeX.\nIt works with any project running MediaWiki, especially Wikipedia and Wikibooks.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mediawiki2latex" = {
          depends = [
            (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."url" or (errorHandler.buildDepError "url"))
            (hsPkgs."hxt-http" or (errorHandler.buildDepError "hxt-http"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."highlighting-kate" or (errorHandler.buildDepError "highlighting-kate"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
          buildable = true;
          };
        };
      };
    }