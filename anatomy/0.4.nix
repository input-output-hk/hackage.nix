{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "anatomy";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "i.am@toogeneric.com";
        author = "Alex Suraci";
        homepage = "http://atomo-lang.org/";
        url = "";
        synopsis = "Anatomy: Atomo documentation system";
        description = "A Scribble-like documentation language/builder for Atomo.";
        buildType = "Simple";
      };
      components = {
        anatomy = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.bytestring
            hsPkgs.atomo
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.haskeline
            hsPkgs.highlighter
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.pretty-show
            hsPkgs.tagsoup
            hsPkgs.text
            hsPkgs.time
            hsPkgs.vector
          ];
        };
        exes = {
          anatomy = {
            depends  = [
              hsPkgs.atomo
              hsPkgs.base
              hsPkgs.blaze-html
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hashable
              hsPkgs.haskeline
              hsPkgs.highlighter
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.pretty-show
              hsPkgs.tagsoup
              hsPkgs.text
              hsPkgs.time
              hsPkgs.vector
            ];
          };
        };
      };
    }