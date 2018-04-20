{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "function-combine";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Iain Alexander <ia@stryx.demon.co.uk>";
        author = "Iain Alexander <ia@stryx.demon.co.uk>";
        homepage = "";
        url = "";
        synopsis = "Combining functions";
        description = "MPTC/FD generalisations of (.) and flip";
        buildType = "Simple";
      };
      components = {
        function-combine = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-type
          ];
        };
      };
    }