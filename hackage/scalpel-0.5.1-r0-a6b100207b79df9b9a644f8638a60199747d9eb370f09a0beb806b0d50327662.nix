{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "scalpel";
        version = "0.5.1";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "willcoster@gmail.com";
      author = "Will Coster";
      homepage = "https://github.com/fimad/scalpel";
      url = "";
      synopsis = "A high level web scraping library for Haskell.";
      description = "Scalpel is a web scraping library inspired by libraries like Parsec and\nPerl's Web::Scraper Scalpel builds on top of TagSoup to provide a\ndeclarative and monadic interface.";
      buildType = "Simple";
    };
    components = {
      "scalpel" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.scalpel-core)
          (hsPkgs.bytestring)
          (hsPkgs.curl)
          (hsPkgs.data-default)
          (hsPkgs.tagsoup)
          (hsPkgs.text)
        ];
      };
    };
  }