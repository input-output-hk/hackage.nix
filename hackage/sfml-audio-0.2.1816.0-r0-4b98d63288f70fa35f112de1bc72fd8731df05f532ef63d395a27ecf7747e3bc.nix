{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "sfml-audio";
        version = "0.2.1816.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "shahn@joyridelabs.de";
      author = "Sönke Hahn";
      homepage = "http://patch-tag.com/r/shahn/sfml-audio";
      url = "";
      synopsis = "minimal bindings to the audio module of sfml";
      description = "Provides a very minimal interface to the audio module of sfml.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
        libs = ([
          (pkgs."stdc++")
          (pkgs."sndfile")
          (pkgs."pthread")
        ] ++ pkgs.lib.optional (system.isLinux) (pkgs."openal")) ++ pkgs.lib.optional (system.isWindows) (pkgs."openal32");
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."OpenAL");
      };
    };
  }