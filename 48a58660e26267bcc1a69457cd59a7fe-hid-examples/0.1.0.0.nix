{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hid-examples";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Vitaly Bragilevsky 2018";
        maintainer = "Vitaly Bragilevsky <vit.bragilevsky@gmail.com>";
        author = "Vitaly Bragilevsky";
        homepage = "https://github.com/bravit/hid-examples/";
        url = "";
        synopsis = "Examples to accompany the book \"Haskell in Depth\"";
        description = "This package provides source code examples which accompany the book\n\"Haskell in Depth\" by Vitaly Bragilevsky (Manning Publications 2019).\nYou may want to get this package via @cabal get hid-examples@\nand explore its content.";
        buildType = "Simple";
      };
      components = {
        exes = {
          locator = {
            depends  = [ hsPkgs.base ];
          };
          vocab1 = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
            ];
          };
          vocab2 = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
            ];
          };
          vocab3 = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
            ];
          };
          showexpr = {
            depends  = [
              hsPkgs.base
              hsPkgs.hint
            ];
          };
          stockquotes = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.blaze-html
              hsPkgs.optparse-applicative
              hsPkgs.time
              hsPkgs.text
              hsPkgs.fmt
              hsPkgs.safe
              hsPkgs.Chart
              hsPkgs.Chart-diagrams
              hsPkgs.cassava
            ];
          };
        };
      };
    }