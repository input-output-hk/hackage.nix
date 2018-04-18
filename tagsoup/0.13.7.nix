{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      testprog = false;
      download = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tagsoup";
          version = "0.13.7";
        };
        license = "BSD-3-Clause";
        copyright = "Neil Mitchell 2006-2016";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "https://github.com/ndmitchell/tagsoup#readme";
        url = "";
        synopsis = "Parsing and extracting information from (possibly malformed) HTML/XML documents";
        description = "TagSoup is a library for parsing HTML/XML. It supports the HTML 5 specification,\nand can be used to parse either well-formed XML, or unstructured and malformed HTML\nfrom the web. The library also provides useful functions to extract information\nfrom an HTML document, making it ideal for screen-scraping.\n\nUsers should start from the \"Text.HTML.TagSoup\" module.";
        buildType = "Simple";
      };
      components = {
        tagsoup = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.text
          ] ++ pkgs.lib.optional _flags.download hsPkgs.network;
        };
        exes = {
          test-tagsoup = {
            depends  = optionals _flags.testprog [
              hsPkgs.QuickCheck
              hsPkgs.deepseq
              hsPkgs.time
              hsPkgs.directory
              hsPkgs.process
            ];
          };
        };
      };
    }