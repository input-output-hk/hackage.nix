{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Blogdown";
          version = "0.1.0";
        };
        license = "AGPL-3.0-only";
        copyright = "(c) 2017 Alex Becker";
        maintainer = "acbecker@uchicago.edu";
        author = "Alex Becker";
        homepage = "";
        url = "";
        synopsis = "A markdown-like markup language designed for blog posts";
        description = "A library and executable that implement a modified, extended version of Markdown designed for writing blog posts.";
        buildType = "Simple";
      };
      components = {
        "Blogdown" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.containers
            hsPkgs.MissingH
          ];
        };
        exes = {
          "Blogdown" = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.MissingH
            ];
          };
        };
        tests = {
          "Test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.MissingH
            ];
          };
        };
      };
    }