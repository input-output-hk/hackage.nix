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
      "library" = {
        depends = [ (hsPkgs.base) ];
        libs = (pkgs.lib.optionals (system.isWindows) [
          (pkgs."stdc++")
          (pkgs."ole32")
          (pkgs."dsound")
          (pkgs."winmm")
        ] ++ pkgs.lib.optionals (system.isLinux) [
          (pkgs."stdc++")
          (pkgs."pthread")
          (pkgs."asound")
        ]) ++ pkgs.lib.optionals (system.isOsx) [
          (pkgs."stdc++")
          (pkgs."pthread")
        ];
        frameworks = pkgs.lib.optionals (system.isOsx) [
          (pkgs."CoreFoundation")
          (pkgs."CoreAudio")
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }