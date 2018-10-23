{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { old-base = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "mediawiki";
        version = "0.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sigbjorn Finne <sof@forkIO.com>";
      author = "Sigbjorn Finne <sof@forkIO.com>";
      homepage = "";
      url = "";
      synopsis = "Interfacing with the MediaWiki API";
      description = "A complete Haskell binding to the MediaWiki API letting you\nprogrammatically access (read and write) MediaWiki content.\n\nSee <http://www.mediawiki.org/wiki/API> and <http://haskell.forkio.com/>\nfor more.";
      buildType = "Simple";
    };
    components = {
      "mediawiki" = {
        depends  = [
          (hsPkgs.xml)
          (hsPkgs.HTTP)
          (hsPkgs.network)
          (hsPkgs.mime)
          (hsPkgs.utf8-string)
        ] ++ [ (hsPkgs.base) ];
      };
      exes = {
        "main" = {
          depends  = [ (hsPkgs.base) ];
        };
        "listCat" = {
          depends  = [
            (hsPkgs.pretty)
          ] ++ [ (hsPkgs.base) ];
        };
      };
    };
  }