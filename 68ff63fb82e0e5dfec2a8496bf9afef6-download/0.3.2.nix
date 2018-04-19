{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "download";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2011, Don Stewart <dons00@gmail.com>";
        maintainer = "Don Stewart <dons00@gmail.com>";
        author = "Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/download";
        url = "";
        synopsis = "High-level file download based on URLs";
        description = "High-level file download based on URLs\n\nDownload web content as strict bytestring, strings, HTML tags, XML, RSS\nor Atom feeds or JSON, via HTTP, FTP or file protocols, using a URL\ninterface.\n\nImporting the library:\n\n> import Network.Download\n\nLoading a webpage as a \"ByteString\":\n\n> doc  <- openURI \"http://haskell.org\"\n\nLoading from a file:\n\n> doc  <- openURI \"file:///tmp/A.hs\"\n\nLoading a HTML page as a list of tags:\n\n> tags <- openAsTags \"http://haskell.org\"\n\nLoading a HTML page as XML:\n\n> tags <- openAsXML \"http://haskell.org\"\n\nLoading an RSS or Atom feed:\n\n> feed <- openAsFeed \"http://haskell.org\"\n\nThese data types can the be processed further with the XML, Feed and\nTagSoup libraries.\n";
        buildType = "Simple";
      };
      components = {
        download = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.tagsoup
            hsPkgs.feed
            hsPkgs.xml
          ];
        };
      };
    }