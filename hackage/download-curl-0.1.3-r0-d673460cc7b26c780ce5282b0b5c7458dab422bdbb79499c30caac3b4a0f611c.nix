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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2.0";
      identifier = { name = "download-curl"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008, Don Stewart <dons@galois.com>";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/download-curl";
      url = "";
      synopsis = "High-level file download based on URLs";
      description = "High-level file download based on URLs\n\nDownload web content as strict or lazy bytestringrs, strings, HTML\ntags, XML, RSS or Atom feeds or JSON, using the curl network library.\n\nImporting the library:\n\n> import Network.Curl.Download\n\nLoading a webpage as a \"ByteString\":\n\n> doc  <- openURI \"http://haskell.org\"\n\nLoading from a file:\n\n> doc  <- openURI \"file:///tmp/A.hs\"\n\nLoading a HTML page as a list of tags:\n\n> tags <- openAsTags \"http://haskell.org\"\n\nLoading a HTML page as XML:\n\n> tags <- openAsXML \"http://haskell.org\"\n\nLoading an RSS or Atom feed:\n\n> feed <- openAsFeed \"http://haskell.org\"\n\nThese data types can the be processed further with the XML, Feed and\nTagSoup libraries.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }