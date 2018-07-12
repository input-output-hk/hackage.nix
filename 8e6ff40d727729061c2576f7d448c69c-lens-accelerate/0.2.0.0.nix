{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lens-accelerate";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Trevor L. McDonell";
        maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        author = "Trevor L. McDonell";
        homepage = "https://github.com/tmcdonell/lens-accelerate";
        url = "";
        synopsis = "Instances to mix lens with accelerate";
        description = "Instances to mix lens with accelerate";
        buildType = "Simple";
      };
      components = {
        "lens-accelerate" = {
          depends  = [
            hsPkgs.base
            hsPkgs.accelerate
            hsPkgs.lens
          ];
        };
      };
    }