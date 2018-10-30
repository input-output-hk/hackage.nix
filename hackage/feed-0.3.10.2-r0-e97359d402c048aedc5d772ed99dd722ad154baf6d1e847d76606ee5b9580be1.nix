{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "feed";
        version = "0.3.10.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Bergmark <adam@bergmark.nl>";
      author = "Sigbjorn Finne <sof@forkIO.com>";
      homepage = "https://github.com/bergmark/feed";
      url = "";
      synopsis = "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.";
      description = "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.\n\nTo help working with the multiple feed formats we've\nended up with, this set of modules provides parsers,\npretty printers and some utility code for querying\nand just generally working with a concrete representation\nof feeds in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.time)
          (hsPkgs.time-locale-compat)
          (hsPkgs.utf8-string)
          (hsPkgs.xml)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.feed)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.time)
            (hsPkgs.time-locale-compat)
            (hsPkgs.utf8-string)
            (hsPkgs.xml)
          ];
        };
      };
    };
  }