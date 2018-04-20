{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "process-extras";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "David Lazar <lazar6@illinois.edu>";
        author = "David Lazar";
        homepage = "https://github.com/davidlazar/process-extras";
        url = "";
        synopsis = "Process extras";
        description = "Extra functionality for the Process library\n<http://hackage.haskell.org/package/process>.";
        buildType = "Simple";
      };
      components = {
        process-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
      };
    }