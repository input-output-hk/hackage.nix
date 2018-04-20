{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "download";
          version = "0.3.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008, Don Stewart <dons@galois.com>";
        maintainer = "Don Stewart <dons@galois.com>";
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
            hsPkgs.tagsoup
            hsPkgs.feed
            hsPkgs.xml
          ] ++ (if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.bytestring
            ]
            else [ hsPkgs.base ]);
        };
      };
    }