{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { testprog = false; };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "tagsoup";
        version = "0.14.1";
      };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2006-2017";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/tagsoup#readme";
      url = "";
      synopsis = "Parsing and extracting information from (possibly malformed) HTML/XML documents";
      description = "TagSoup is a library for parsing HTML/XML. It supports the HTML 5 specification,\nand can be used to parse either well-formed XML, or unstructured and malformed HTML\nfrom the web. The library also provides useful functions to extract information\nfrom an HTML document, making it ideal for screen-scraping.\n\nUsers should start from the \"Text.HTML.TagSoup\" module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      exes = {
        "test-tagsoup" = {
          depends  = pkgs.lib.optionals (flags.testprog) [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.QuickCheck)
            (hsPkgs.deepseq)
            (hsPkgs.time)
            (hsPkgs.directory)
            (hsPkgs.process)
          ];
        };
      };
    };
  }