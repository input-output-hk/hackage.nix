{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "proteaaudio";
          version = "0.6.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "csaba (dot) hruska (at) gmail (dot) com";
        author = "Csaba Hruska";
        homepage = "";
        url = "";
        synopsis = "A wrapper for the proteaaudio library.";
        description = "A wrapper for the proteaaudio library. http://viremo.eludi.net/proteaAudio/";
        buildType = "Simple";
      };
      components = {
        proteaaudio = {
          depends  = [ hsPkgs.base ];
          libs = (optionals system.isWindows [
            pkgs."stdc++"
            pkgs.ole32
            pkgs.dsound
            pkgs.winmm
          ] ++ optionals system.isLinux [
            pkgs."stdc++"
            pkgs.pthread
            pkgs.asound
          ]) ++ optionals system.isOsx [
            pkgs."stdc++"
            pkgs.pthread
          ];
          frameworks = optionals system.isOsx [
            pkgs.CoreFoundation
            pkgs.CoreAudio
          ];
        };
      };
    }