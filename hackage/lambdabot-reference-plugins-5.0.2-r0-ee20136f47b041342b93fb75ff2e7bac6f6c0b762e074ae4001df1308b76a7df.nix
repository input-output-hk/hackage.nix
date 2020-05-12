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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "lambdabot-reference-plugins"; version = "5.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "Don Stewart";
      homepage = "http://haskell.org/haskellwiki/Lambdabot";
      url = "";
      synopsis = "Lambdabot reference plugins.";
      description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nProvided plugins:\n\n[dict] Query various dictionaries.\n\n[metar] Look up avian weather reports.\n\n[oeis] Look up number sequences on OEIS.\n\n[search] Query search engines.\n\n[spell] Check spelling of wrods.\n\n[ticker] Look up stock quotes.\n\n[url] Display titles of URLs on channels.\n\n[where] Manage and query a key-URL list.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."lambdabot-core" or (errorHandler.buildDepError "lambdabot-core"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."oeis" or (errorHandler.buildDepError "oeis"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ] ++ [
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }