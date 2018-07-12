{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hakyll-contrib-hyphenation";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Pavel Kretov <firegurafiku@gmail.com>";
        author = "Pavel Kretov <firegurafiku@gmail.com>";
        homepage = "https://bitbucket.org/rvlm/hakyll-contrib-hyphenation";
        url = "";
        synopsis = "automatic hyphenation for Hakyll";
        description = "This library provides Hakyll compiler to automatically\nhyphenate each word in HTML output with Unicode SOFT-HYPHEN\ncharacters. It understands HTML markup and doesn't try, for\nexample, to hyphenate tag names and attributes. It uses\n<http://hackage.haskell.org/package/hyphenation hyphenation>\npackage to do actual work of splitting words.";
        buildType = "Simple";
      };
      components = {
        "hakyll-contrib-hyphenation" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hakyll
            hsPkgs.hyphenation
            hsPkgs.split
            hsPkgs.tagsoup
          ];
        };
      };
    }