{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "qd-vec";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "claude@mathr.co.uk";
        author = "Claude Heiland-Allen";
        homepage = "";
        url = "";
        synopsis = "'Vec' instances for 'qd' types";
        description = "Instances of Vec's NearZero and Packed for qd's types.";
        buildType = "Simple";
      };
      components = {
        "qd-vec" = {
          depends  = [
            hsPkgs.base
            hsPkgs.qd
            hsPkgs.Vec
          ];
        };
      };
    }