{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      mtl2 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "random-source";
          version = "0.3";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <james.cook@usma.edu>";
        author = "James Cook <james.cook@usma.edu>";
        homepage = "https://github.com/mokus0/random-fu";
        url = "";
        synopsis = "Generic basis for random number generators";
        description = "Random number generation based on entropy sources\nable to produce a small but well-defined set of\nprimitive variates.  Also includes facilities for\n\\\"completing\\\" partial implementations, making it\neasy to define new entropy sources in a way that\nis naturally forward-compatible.";
        buildType = "Simple";
      };
      components = {
        random-source = {
          depends  = (([
            hsPkgs.flexible-defaults
            hsPkgs.mersenne-random-pure64
            hsPkgs.random
            hsPkgs.stateref
            hsPkgs.template-haskell
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") hsPkgs.mwc-random) ++ [
            hsPkgs.mtl
          ]) ++ (if _flags.splitbase
            then [ hsPkgs.base hsPkgs.syb ]
            else [ hsPkgs.base ]);
        };
      };
    }