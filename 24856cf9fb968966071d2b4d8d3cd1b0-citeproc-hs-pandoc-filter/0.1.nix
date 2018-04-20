{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "citeproc-hs-pandoc-filter";
          version = "0.1";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "andrea.rossato@unitn.it";
        author = "Andrea Rossato";
        homepage = "http://istitutocolli.org/repos/citeproc-hs-pandoc-filter/";
        url = "";
        synopsis = "A Pandoc filter for processing bibliographic references with citeproc-hs";
        description = "citeproc-hs is a library for rendering\nbibliographic reference citations into a variety\nof styles using a macro language called Citation\nStyle Language (CSL). More details on CSL can be\nfound here:\n<http://citationstyles.org/>.\n\nciteproc-hs-pandoc-filter is a replacement of\nciteproc-pandoc which uses citeproc-hs for\nprocessing citations.";
        buildType = "Simple";
      };
      components = {
        exes = {
          citeproc-hs = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.utf8-string
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.citeproc-hs
              hsPkgs.pandoc-types
              hsPkgs.aeson
              hsPkgs.texmath
              hsPkgs.yaml
              hsPkgs.pandoc
              hsPkgs.tagsoup
            ];
          };
        };
      };
    }