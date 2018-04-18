{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      wasapi = false;
      directsound = false;
      wmme = false;
      wdmks = false;
      bundle = false;
    } // flags;
    in {
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
        bindings-portaudio = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
            hsPkgs.vector
          ];
          libs = optionals (system.isWindows && _flags.bundle) ([
            pkgs.winmm
            pkgs.ole32
          ] ++ pkgs.lib.optional _flags.wdmks pkgs.Setupapi);
        };
      };
    }