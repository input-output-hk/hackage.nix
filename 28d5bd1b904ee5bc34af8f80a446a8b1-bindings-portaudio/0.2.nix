{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      wasapi = false;
      directsound = false;
      wmme = false;
      wdmks = false;
      bundle = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bindings-portaudio";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Low-level bindings to portaudio library";
        description = "";
        buildType = "Simple";
      };
      components = {
        "bindings-portaudio" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
            hsPkgs.vector
          ];
          libs = pkgs.lib.optionals (system.isWindows && _flags.bundle) ([
            pkgs.winmm
            pkgs.ole32
          ] ++ pkgs.lib.optional _flags.wdmks pkgs.Setupapi);
          pkgconfig = pkgs.lib.optional (system.isLinux || system.isFreebsd || system.isOsx || !_flags.bundle) pkgconfPkgs."portaudio-2.0";
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
      };
    }