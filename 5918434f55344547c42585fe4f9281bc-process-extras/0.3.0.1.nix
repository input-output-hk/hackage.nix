{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "process-extras";
          version = "0.3.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "David Fox <dsf@seereason.com>";
        author = "David Lazar, Bas van Dijk, David Fox";
        homepage = "https://github.com/seereason/process-extras";
        url = "";
        synopsis = "Process extras";
        description = "Extra functionality for the Process library\n<http://hackage.haskell.org/package/process>.";
        buildType = "Simple";
      };
      components = {
        process-extras = {
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