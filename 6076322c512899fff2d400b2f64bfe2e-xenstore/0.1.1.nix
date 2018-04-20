{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      executable = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "xenstore";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "";
        url = "";
        synopsis = "Xenstore client access";
        description = "Xenstore client access";
        buildType = "Simple";
      };
      components = {
        xenstore = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.network
            hsPkgs.mtl
          ];
        };
        exes = { xenstore = {}; };
      };
    }