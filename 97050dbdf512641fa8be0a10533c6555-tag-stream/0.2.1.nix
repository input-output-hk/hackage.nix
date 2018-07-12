{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tag-stream";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yi.codeplayer@gmail.com";
        author = "yihuang";
        homepage = "http://github.com/yihuang/tag-stream";
        url = "";
        synopsis = "streamlined html tag parser";
        description = "Tag-stream is a library for parsing HTML//XML to a token stream.\nIt can parse unstructured and malformed HTML from the web.\nIt also provides an Enumeratee which can parse streamline html, which means it consumes constant memory.\nUsers can start from the `tests/Tests.hs` module to see what it can do.";
        buildType = "Simple";
      };
      components = {
        "tag-stream" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.enumerator
            hsPkgs.attoparsec
            hsPkgs.blaze-builder
          ];
        };
      };
    }