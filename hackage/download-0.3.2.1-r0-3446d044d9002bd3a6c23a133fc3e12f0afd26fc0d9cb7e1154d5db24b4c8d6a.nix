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
      identifier = { name = "download"; version = "0.3.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2011, Don Stewart <dons00@gmail.com>";
      maintainer = "Sibi Prabakaran <sibi@psibi.in>, Don Stewart <dons00@gmail.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/download";
      url = "";
      synopsis = "High-level file download based on URLs";
      description = "High-level file download based on URLs\n\nDownload web content as strict bytestring, strings, HTML tags, XML, RSS\nor Atom feeds or JSON, via HTTP, FTP or file protocols, using a URL\ninterface.\n\nImporting the library:\n\n> import Network.Download\n\nLoading a webpage as a \"ByteString\":\n\n> doc  <- openURI \"http://haskell.org\"\n\nLoading from a file:\n\n> doc  <- openURI \"file:///tmp/A.hs\"\n\nLoading a HTML page as a list of tags:\n\n> tags <- openAsTags \"http://haskell.org\"\n\nLoading a HTML page as XML:\n\n> tags <- openAsXML \"http://haskell.org\"\n\nLoading an RSS or Atom feed:\n\n> feed <- openAsFeed \"http://haskell.org\"\n\nThese data types can the be processed further with the XML, Feed and\nTagSoup libraries.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ];
        buildable = true;
        };
      };
    }