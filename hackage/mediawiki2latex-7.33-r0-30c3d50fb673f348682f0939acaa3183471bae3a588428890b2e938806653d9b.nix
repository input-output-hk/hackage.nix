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
      identifier = { name = "mediawiki2latex"; version = "7.33"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Dirk Hünniger <dirk.hunniger@googlemail.com>";
      author = "Dirk Hünniger <dirk.hunniger@googlemail.com>";
      homepage = "http://sourceforge.net/projects/wb2pdf/";
      url = "";
      synopsis = "Convert MediaWiki text to LaTeX";
      description = "mediawiki2latex converts MediaWiki markup to LaTeX, PDF, EPUB and ODT.\nSo it provides and export from MediaWiki to LaTeX.\nIt works with any project running MediaWiki, especially Wikipedia and Wikibooks.\nPlease note, that the program requieres certain run time dependencies. Those\ncannot be expressed in cabal and thus won't be installed when installing from hackage.\nSo we strongly recommend to use the binaries included in debian as well as ubuntu or\nto use the binary version for windows provided on the sourcefogre project page.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mediawiki2latex" = {
          depends = [
            (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
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
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
          buildable = true;
          };
        };
      };
    }