{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hsndfile-storablevector";
          version = "0.4.0";
        };
        license = "LicenseRef-GPL";
        copyright = "Stefan Kersten, 2007-2010";
        maintainer = "Stefan Kersten <sk@k-hornz.de>";
        author = "Stefan Kersten";
        homepage = "http://haskell.org/haskellwiki/Hsndfile";
        url = "";
        synopsis = "Haskell bindings for libsndfile (Data.StorableVector interface)";
        description = "Haskell bindings for libsndfile (@Data.StorableVector@ interface).\n\nFor more information on /hsndfile/ visit its homepage at <http://haskell.org/haskellwiki/Hsndfile>.";
        buildType = "Simple";
      };
      components = {
        "hsndfile-storablevector" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hsndfile
            hsPkgs.storablevector
          ];
        };
      };
    }