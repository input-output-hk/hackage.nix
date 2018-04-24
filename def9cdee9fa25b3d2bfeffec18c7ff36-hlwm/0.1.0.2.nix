{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hlwm";
          version = "0.1.0.2";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "<hpd@hpdeifel.de>";
        author = "Hans-Peter Deifel";
        homepage = "https://github.com/hpdeifel/hlwm-haskell";
        url = "";
        synopsis = "Bindings to the herbstluftwm window manager";
        description = "A client-side IPC implementation for herbstluftwm.";
        buildType = "Simple";
      };
      components = {
        hlwm = {
          depends  = [
            hsPkgs.base
            hsPkgs.X11
            hsPkgs.transformers
            hsPkgs.stm
            hsPkgs.unix
          ];
          build-tools = [ hsPkgs.hsc2hs ];
        };
        exes = {
          hherbstclient = {
            depends  = [
              hsPkgs.base
              hsPkgs.X11
              hsPkgs.transformers
              hsPkgs.stm
              hsPkgs.unix
              hsPkgs.hlwm
            ];
            build-tools = [ hsPkgs.hsc2hs ];
          };
        };
      };
    }