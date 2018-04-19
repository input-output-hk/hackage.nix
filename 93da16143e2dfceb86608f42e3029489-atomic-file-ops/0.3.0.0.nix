{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "atomic-file-ops";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Clinton Mead";
        maintainer = "clintonmead@gmail.com";
        author = "Clinton Mead";
        homepage = "https://github.com/clintonmead/atomic-file-ops#readme";
        url = "";
        synopsis = "Functions to atomically write to files";
        description = "See module \"System.IO.AtomicFileOps\" for an overview and documentation.";
        buildType = "Simple";
      };
      components = {
        atomic-file-ops = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filelock
            hsPkgs.filepath
            hsPkgs.io-string-like
          ];
        };
      };
    }