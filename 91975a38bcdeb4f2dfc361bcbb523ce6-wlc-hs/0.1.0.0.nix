{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wlc-hs";
          version = "0.1.0.0";
        };
        license = "ISC";
        copyright = "";
        maintainer = "moritz.kiefer@purelyfunctional.org";
        author = "Moritz Kiefer";
        homepage = "";
        url = "";
        synopsis = "Haskell bindings for the wlc library";
        description = "";
        buildType = "Custom";
      };
      components = {
        wlc-hs = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.lens
            hsPkgs.process
            hsPkgs.transformers
            hsPkgs.xkbcommon
            hsPkgs.pretty
          ];
          libs = [ pkgs.wlc ];
          build-tools = [ hsPkgs.c2hs ];
        };
      };
    }