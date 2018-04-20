{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "scope";
          version = "0.8.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "conrad@metadecks.org";
        author = "Conrad Parker";
        homepage = "";
        url = "";
        synopsis = "An interactive renderer for plotting time-series data";
        description = "scope is a framework for plotting time-series data, using zoom-cache\nfiles. This package contains the core Scope library; to use it for\ninteractive plotting, you need a rendering backend such as scope-cairo:\n\n<http://hackage.haskell.org/package/scope-cairo>\n\nFor more information about zoom-cache files, see the zoom-cache package:\n\n<http://hackage.haskell.org/package/zoom-cache>";
        buildType = "Simple";
      };
      components = {
        scope = {
          depends  = [
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.iteratee
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.mtl
            hsPkgs.mwc-random
            hsPkgs.time
            hsPkgs.unix
            hsPkgs.zoom-cache
          ] ++ [ hsPkgs.base ];
        };
      };
    }