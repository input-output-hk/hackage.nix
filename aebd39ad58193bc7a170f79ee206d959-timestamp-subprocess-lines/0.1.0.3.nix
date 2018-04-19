{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "timestamp-subprocess-lines";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Eyal Lotem (2012)";
        maintainer = "eyal.lotem@gmail.com";
        author = "Eyal Lotem";
        homepage = "https://github.com/Peaker/timestamp-subprocess-lines";
        url = "";
        synopsis = "Run a command and timestamp its stdout/stderr lines";
        description = "A small utility that allows executing other commands\nand prefix each line with a timestamp.";
        buildType = "Simple";
      };
      components = {
        exes = {
          Timestamp = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.split
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.process
              hsPkgs.bytestring
            ];
          };
        };
      };
    }