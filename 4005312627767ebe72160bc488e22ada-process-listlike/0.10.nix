{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "process-listlike";
          version = "0.10";
        };
        license = "MIT";
        copyright = "";
        maintainer = "David Lazar <lazar6@illinois.edu>";
        author = "David Lazar, Bas van Dijk";
        homepage = "https://github.com/ddssff/process-listlike";
        url = "";
        synopsis = "Process extras";
        description = "Extra functionality for the Process library\n<http://hackage.haskell.org/package/process>.";
        buildType = "Simple";
      };
      components = {
        process-listlike = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.bytestring
            hsPkgs.ListLike
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.deepseq
          ];
        };
        exes = {
          process-listlike-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.process
              hsPkgs.process-listlike
              hsPkgs.utf8-string
              hsPkgs.unix
              hsPkgs.text
              hsPkgs.HUnit
              hsPkgs.ListLike
              hsPkgs.regex-posix
            ];
          };
          process-listlike-interactive-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.HUnit
              hsPkgs.ListLike
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.process-listlike
              hsPkgs.text
              hsPkgs.utf8-string
              hsPkgs.unix
            ];
          };
        };
      };
    }