{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "language-c-comments";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ghulette@gmail.com";
        author = "Geoff Hulette";
        homepage = "http://github.com/ghulette/language-c-comments";
        url = "";
        synopsis = "Extracting comments from C code";
        description = "Language C Comments is a Haskell library for extracting\ncomments from C code.  It will parse both single- and\nmulti-line comments, and correctly handles split lines.";
        buildType = "Simple";
      };
      components = {
        language-c-comments = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.language-c
          ];
          build-tools = [
            hsPkgs.buildPackages.alex
          ];
        };
      };
    }