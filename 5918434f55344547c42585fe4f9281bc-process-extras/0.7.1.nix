{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "process-extras";
          version = "0.7.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "David Fox <dsf@seereason.com>";
        author = "David Lazar, Bas van Dijk, David Fox";
        homepage = "https://github.com/seereason/process-extras";
        url = "";
        synopsis = "Process extras";
        description = "Extends <http://hackage.haskell.org/package/process>.\nRead process input and output as ByteStrings or\nText, or write your own ProcessOutput instance.\nLazy process input and output.  ProcessMaker class\nfor more flexibility in the process creation API.";
        buildType = "Simple";
      };
      components = {
        process-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.ListLike
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.deepseq
            hsPkgs.generic-deriving
          ];
        };
        tests = {
          process-extras-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.process-extras
            ];
          };
        };
      };
    }