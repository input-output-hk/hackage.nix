{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bindings-sc3";
          version = "0.4.1";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) Stefan Kersten 2010-2012";
        maintainer = "Stefan Kersten <sk@k-hornz.de>";
        author = "Stefan Kersten <sk@k-hornz.de>";
        homepage = "https://github.com/kaoskorobase/bindings-sc3/";
        url = "";
        synopsis = "Low-level bindings to the SuperCollider synthesis engine library.";
        description = "DEPRECATED. This library is looking for a new maintainer.\n\nThis library provides low level bindings to the SuperCollider synthesis\nengine library (@libscsynth@). If you are looking for a higher level\nHaskell interface, please use the /hsc3-process/ package\n(<http://hackage.haskell.org/package/hsc3-process>).\n\nChangeLog: <https://github.com/kaoskorobase/bindings-sc3/blob/master/ChangeLog.md>\n\nIn order to use this package, you need to build the dynamic library version\nof SuperCollider <supercollider.sourceforge.net> by passing\n@-DLIBSCSYNTH=ON@ to @cmake@ and put it in a location where it can be found by the\nlinker (e.g. @/usr/local/lib@ on Unix systems, alternatively use the @--extra-lib-dirs@\nflag of @cabal configure@).\n\nThe required SuperCollider version is 3.5.";
        buildType = "Simple";
      };
      components = {
        bindings-sc3 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
          ];
          libs = [ pkgs.scsynth ];
        };
      };
    }