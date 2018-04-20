{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "portaudio";
          version = "0.2.3";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(c) 2008 John Van Enk";
        maintainer = "vanenkj@gmail.com, avaitla16@gmail.com";
        author = "John Van Enk, Anil Vaitla";
        homepage = "http://code.haskell.org/portaudio";
        url = "";
        synopsis = "Haskell bindings for the PortAudio library.";
        description = "Bindings to the cross platform PortAudio library. Version 0.0.1 excludes the callback model.";
        buildType = "Simple";
      };
      components = {
        portaudio = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
          libs = [ pkgs.portaudio ];
        };
      };
    }