{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "flexiwrap";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Iain Alexander <ia@stryx.demon.co.uk>";
        author = "Iain Alexander <ia@stryx.demon.co.uk>";
        homepage = "";
        url = "";
        synopsis = "Flexible wrappers";
        description = "MPTC/FD framework using multi-purpose wrappers\nto direct instance selection";
        buildType = "Simple";
      };
      components = {
        flexiwrap = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-type
            hsPkgs.mtl
            hsPkgs.QuickCheck
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "6.6.1") hsPkgs.special-functors;
        };
      };
    }