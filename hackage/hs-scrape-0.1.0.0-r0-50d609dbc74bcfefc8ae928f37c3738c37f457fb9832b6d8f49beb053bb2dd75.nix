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
      specVersion = "1.10";
      identifier = {
        name = "hs-scrape";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "codygman.consulting@gmail.com";
      author = "Cody Goodman";
      homepage = "https://github.com/codygman/hs-scrape/";
      url = "";
      synopsis = "Simple and easy web scraping and automation in Haskell.";
      description = "Shpider/mechanize inspired web automation with a focus on convenience for web scraping.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.wreq)
          (hsPkgs.html-conduit)
          (hsPkgs.xml-conduit)
          (hsPkgs.safe)
          (hsPkgs.transformers)
          (hsPkgs.lens)
          (hsPkgs.containers)
          (hsPkgs.url)
          (hsPkgs.hspec)
          (hsPkgs.retry)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.hspec)
            (hsPkgs.tasty-hunit)
            (hsPkgs.hs-scrape)
            (hsPkgs.xml-conduit)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }