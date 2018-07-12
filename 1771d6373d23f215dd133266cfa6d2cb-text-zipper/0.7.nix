{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "text-zipper";
          version = "0.7";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 Jonathan Daugherty";
        maintainer = "cygnus@foobox.com";
        author = "Jonathan Daugherty <cygnus@foobox.com>";
        homepage = "";
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
      };
    }