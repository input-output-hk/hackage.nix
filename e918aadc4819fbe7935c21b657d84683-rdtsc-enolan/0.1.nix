{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "rdtsc-enolan";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Echo Nolan <echo@echonolan.net>";
        author = "Martin Grabmueller <martin@grabmueller.de>,\nEcho Nolan <echo@echonolan.net>";
        homepage = "http://code.haskell.org/rdtsc";
        url = "";
        synopsis = "Binding to sources of high-efficiency, high-precision, monotonically\nincreasing relative time.";
        description = "Haskell binding to sources of high-efficiency, high-precision,\nmonotonically increasing relative time. Tested only on amd64 though, so use\nit at your own risk. Most of the credit should go to Matteo Frigo and Martin\nGrabmuller, I only cleaned up the documentation.";
        buildType = "Simple";
      };
      components = {
        rdtsc-enolan = {
          depends  = [ hsPkgs.base ];
        };
      };
    }