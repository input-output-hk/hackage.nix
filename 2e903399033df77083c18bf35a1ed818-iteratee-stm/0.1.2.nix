{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "iteratee-stm";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jwlato@gmail.com";
        author = "John W. Lato";
        homepage = "http://www.tiresiaspress.us/~jwlato/haskell/iteratee-stm";
        url = "";
        synopsis = "Concurrent iteratees using STM";
        description = "Enumerators and iteratees which read from/write to STM\nchannels.  This allows for processes with dedicated IO\nthreads.";
        buildType = "Simple";
      };
      components = {
        iteratee-stm = {
          depends  = [
            hsPkgs.base
            hsPkgs.iteratee
            hsPkgs.stm
            hsPkgs.stm-chans
            hsPkgs.transformers
          ];
        };
      };
    }