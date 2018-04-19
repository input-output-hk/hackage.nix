{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "lifter";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Edwin Brady <eb@cs.st-andrews.ac.uk>";
        author = "ICFP Contest 2012 Organisers";
        homepage = "http://icfpcontest2012.wordpress.com/";
        url = "";
        synopsis = "A boulderdash-like game and solution validator";
        description = "ICFP Contest 2012 task";
        buildType = "Simple";
      };
      components = {
        exes = {
          lifter = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.gloss
              hsPkgs.bytestring
              hsPkgs.stb-image
              hsPkgs.bitmap
              hsPkgs.array
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
        };
      };
    }