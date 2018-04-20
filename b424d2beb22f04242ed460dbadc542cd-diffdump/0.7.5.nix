{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "diffdump";
          version = "0.7.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Greg Fitzgerald <garious@gmail.com>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Tools for diffing stdout";
        description = "Command-line tools for diffing and patching stdout";
        buildType = "Simple";
      };
      components = {
        exes = {
          diffdump = {
            depends  = [
              hsPkgs.base
              hsPkgs.filemanip
              hsPkgs.ansi-terminal
              hsPkgs.parallel-io
              hsPkgs.cmdargs
              hsPkgs.bytestring
              hsPkgs.process-extras
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.unix
            ];
          };
          patchdump = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
            ];
          };
        };
      };
    }