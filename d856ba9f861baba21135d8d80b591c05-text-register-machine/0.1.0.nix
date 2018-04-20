{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "text-register-machine";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "acfoltzer@gmail.com";
        author = "Adam C. Foltzer";
        homepage = "https://github.com/acfoltzer/text-register-machine";
        url = "";
        synopsis = "A Haskell implementation of the 1# Text Register Machine";
        description = "An implementation of Lawrence S. Moss' @1\\#@ language and Text Register Machine (<http://www.indiana.edu/~iulg/trm/>).";
        buildType = "Simple";
      };
      components = {
        text-register-machine = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.vector
          ];
        };
      };
    }