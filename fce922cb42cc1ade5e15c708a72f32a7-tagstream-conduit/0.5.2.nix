{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "tagstream-conduit";
          version = "0.5.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yi.codeplayer@gmail.com";
        author = "yihuang";
        homepage = "http://github.com/yihuang/tagstream-conduit";
        url = "";
        synopsis = "streamlined html tag parser";
        description = "Tag-stream is a library for parsing HTML//XML to a token stream.\nIt can parse unstructured and malformed HTML from the web.\nIt also provides an Enumeratee which can parse streamline html, which means it consumes constant memory.\nYou can start from the `tests/Tests.hs` module to see what it can do.";
        buildType = "Simple";
      };
      components = {
        tagstream-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.conduit
            hsPkgs.attoparsec
            hsPkgs.blaze-builder
            hsPkgs.blaze-builder-conduit
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.conduit
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.tagstream-conduit
            ];
          };
        };
      };
    }