{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "download";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008, Don Stewart <dons@galois.com>";
        maintainer = "Don Stewart <dons@galois.com>";
        author = "Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/download";
        url = "";
        synopsis = "High-level file download based on URLs";
        description = "High-level file download based on URLs\n\nDownload web content as strict bytestring, strings,\nHTML tags, XML, RSS or Atom feeds or JSON, via HTTP,\nFTP or file protocols, using a URL interface.\n";
        buildType = "Simple";
      };
      components = {
        "download" = {
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