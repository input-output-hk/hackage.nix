{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      example = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "repa-sndfile";
          version = "3.2.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<8c6794b6@gmail.com>";
        author = "<8c6794b6@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Reading and writing sound files with repa arrays";
        description = "Add supporting of reading and writing audio data with repa arrays in\nvarious format.\n\nThe code is using libsndfile and hsndfile package.";
        buildType = "Simple";
      };
      components = {
        repa-sndfile = {
          depends  = [
            hsPkgs.base
            hsPkgs.hsndfile
            hsPkgs.repa
          ] ++ pkgs.lib.optionals _flags.example [
            hsPkgs.hsndfile-vector
            hsPkgs.vector
          ];
        };
        exes = {
          rw = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsndfile
              hsPkgs.hsndfile-vector
              hsPkgs.repa
              hsPkgs.vector
              hsPkgs.repa-sndfile
            ];
          };
          gensine = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsndfile
              hsPkgs.hsndfile-vector
              hsPkgs.vector
              hsPkgs.repa
              hsPkgs.repa-sndfile
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hsndfile
              hsPkgs.hsndfile-vector
              hsPkgs.repa
              hsPkgs.vector
              hsPkgs.repa-sndfile
            ];
          };
        };
      };
    }