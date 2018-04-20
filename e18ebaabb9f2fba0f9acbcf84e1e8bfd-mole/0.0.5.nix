{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mole";
          version = "0.0.5";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tomas.carnecky@gmail.com";
        author = "Tomas Carnecky";
        homepage = "";
        url = "";
        synopsis = "A glorified string replacement tool";
        description = "A glorified string replacement tool. For a very specific purpose. That\npurpose being to compile and optimize a static website (or a single-page\napplication). Mole inspects source, builds a complete dependency tree,\nminifies and compresses the files, adds fingerprints and writes the result\nto a directory.";
        buildType = "Simple";
      };
      components = {
        exes = {
          mole = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.base64-bytestring
              hsPkgs.tagsoup
              hsPkgs.stm
              hsPkgs.cryptohash
              hsPkgs.filepath
              hsPkgs.filemanip
              hsPkgs.fsnotify
              hsPkgs.directory
              hsPkgs.snap
              hsPkgs.snap-server
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.process
              hsPkgs.attoparsec
              hsPkgs.network-uri
              hsPkgs.optparse-applicative
              hsPkgs.time
              hsPkgs.mtl
              hsPkgs.kraken
              hsPkgs.unix
              hsPkgs.css-syntax
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.smallcheck
              hsPkgs.hspec-smallcheck
              hsPkgs.vector
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.time
              hsPkgs.kraken
              hsPkgs.attoparsec
              hsPkgs.stm
              hsPkgs.bytestring
              hsPkgs.containers
            ];
          };
        };
      };
    }