{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "mediawiki2latex";
        version = "7.6";
      };
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
          depends  = [
            (hsPkgs.directory-tree)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.http-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.temporary)
            (hsPkgs.file-embed)
            (hsPkgs.url)
            (hsPkgs.hxt-http)
            (hsPkgs.hxt)
            (hsPkgs.utf8-string)
            (hsPkgs.parsec)
            (hsPkgs.HTTP)
            (hsPkgs.split)
            (hsPkgs.containers)
            (hsPkgs.base)
            (hsPkgs.highlighting-kate)
            (hsPkgs.utility-ht)
            (hsPkgs.transformers)
            (hsPkgs.directory)
            (hsPkgs.blaze-html)
            (hsPkgs.array)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.happstack-server)
            (hsPkgs.mtl)
            (hsPkgs.network)
          ];
        };
      };
    };
  }