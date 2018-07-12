{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "text-zipper";
          version = "0.10.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 Jonathan Daugherty";
        maintainer = "cygnus@foobox.com";
        author = "Jonathan Daugherty <cygnus@foobox.com>";
        homepage = "https://github.com/jtdaugherty/text-zipper/";
        url = "";
        synopsis = "A text editor zipper library";
        description = "This library provides a zipper and API for editing text.";
        buildType = "Simple";
      };
      components = {
        "text-zipper" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.deepseq
          ];
        };
        tests = {
          "text-zipper-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.text-zipper
            ];
          };
        };
      };
    }