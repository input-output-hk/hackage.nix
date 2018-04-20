{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "brillig";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "eric.kow@gmail.com";
        author = "Eric Kow";
        homepage = "";
        url = "";
        synopsis = "Simple part of speech tagger";
        description = "Right now, this just implements a stupid unigram tagger.\nOne day it may grow up to an HMM tagger or an implementation\nof the Brill tagger.";
        buildType = "Simple";
      };
      components = {
        brillig = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.text
            hsPkgs.ListZipper
          ];
        };
        exes = {
          brillig = {
            depends  = [
              hsPkgs.brillig
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.text
            ];
          };
        };
      };
    }