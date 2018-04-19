{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "sfml-audio";
          version = "0.6.0.1816";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "shahn@joyridelabs.de";
        author = "Sönke Hahn";
        homepage = "http://patch-tag.com/r/shahn/sfml-audio";
        url = "";
        synopsis = "minimal bindings to the audio module of sfml";
        description = "Provides a very minimal interface to the audio module of sfml.\nCurrently, only the playing of sounds is covered.\nPlaying background music is not yet supported, but planned.\n(sfml is a multimedia library: <http://www.sfml-dev.org/>)";
        buildType = "Simple";
      };
      components = {
        sfml-audio = {
          depends  = [ hsPkgs.base ];
          libs = ([
            pkgs."stdc++"
            pkgs.sndfile
          ] ++ optionals system.isLinux [
            pkgs.openal
            pkgs.pthread
          ]) ++ pkgs.lib.optional system.isWindows pkgs.openal32;
          frameworks = pkgs.lib.optional system.isOsx pkgs.OpenAL;
        };
      };
    }