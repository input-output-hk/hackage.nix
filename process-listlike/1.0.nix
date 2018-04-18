{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "process-listlike";
          version = "1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "David Fox <dsf@seereason.com>";
        author = "David Lazar, Bas van Dijk, David Fox";
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
            hsPkgs.ListLike
            hsPkgs.process
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.deepseq
          ];
        };
      };
    }