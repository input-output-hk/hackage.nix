{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      example = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "proteaaudio";
          version = "0.7.0";
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
        "proteaaudio" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = (pkgs.lib.optionals system.isWindows [
            pkgs."stdc++"
            pkgs.ole32
            pkgs.dsound
            pkgs.winmm
          ] ++ pkgs.lib.optionals system.isLinux [
            pkgs."stdc++"
            pkgs.pthread
            pkgs.pulse-simple
            pkgs.pulse
          ]) ++ pkgs.lib.optionals system.isOsx [
            pkgs."stdc++"
            pkgs.pthread
          ];
          frameworks = pkgs.lib.optionals system.isOsx [
            pkgs.CoreFoundation
            pkgs.CoreAudio
          ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
        exes = {
          "proteaaudio-play" = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.bytestring
              hsPkgs.proteaaudio
            ];
          };
        };
      };
    }