{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hsndfile";
          version = "0.4.0";
        };
        license = "LicenseRef-GPL";
        copyright = "Stefan Kersten, 2007-2010";
        maintainer = "Stefan Kersten <sk@k-hornz.de>";
        author = "Stefan Kersten";
        homepage = "http://haskell.org/haskellwiki/Hsndfile";
        url = "";
        synopsis = "Haskell bindings for libsndfile";
        description = "Haskell bindings for /libsndfile/, a comprehensive C library for reading and writing a large number of soundfile formats by Erik de Castro Lopo (<http://www.mega-nerd.com/libsndfile/>).\n\nFor more information on /hsndfile/ visit its homepage at <http://haskell.org/haskellwiki/Hsndfile>.";
        buildType = "Simple";
      };
      components = {
        hsndfile = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
          ];
          libs = [ pkgs.sndfile ];
          build-tools = [ hsPkgs.c2hs ];
        };
      };
    }