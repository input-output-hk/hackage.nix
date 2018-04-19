{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "proteaaudio";
          version = "0.6.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "csaba.hruska@gmail.com";
        author = "Csaba Hruska";
        homepage = "";
        url = "";
        synopsis = "Simple audio library for Windows, Linux, OSX.";
        description = "Simple audio library for Windows, Linux, OSX. Supports Ogg and Wav playback and multichannel mixing.";
        buildType = "Simple";
      };
      components = {
        proteaaudio = {
          depends  = [ hsPkgs.base ];
          libs = (pkgs.lib.optionals system.isWindows [
            pkgs."stdc++"
            pkgs.ole32
            pkgs.dsound
            pkgs.winmm
          ] ++ pkgs.lib.optionals system.isLinux [
            pkgs."stdc++"
            pkgs.pthread
            pkgs.asound
          ]) ++ pkgs.lib.optionals system.isOsx [
            pkgs."stdc++"
            pkgs.pthread
          ];
          frameworks = pkgs.lib.optionals system.isOsx [
            pkgs.CoreFoundation
            pkgs.CoreAudio
          ];
        };
      };
    }