{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      boltzmann = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "generic-random";
          version = "0.4.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "lysxia@gmail.com";
        author = "Li-yao Xia";
        homepage = "http://github.com/lysxia/generic-random";
        url = "";
        synopsis = "Generic random generators";
        description = "Please see the README.";
        buildType = "Simple";
      };
      components = {
        generic-random = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
          ] ++ pkgs.lib.optional _flags.boltzmann hsPkgs.boltzmann-samplers;
        };
      };
    }