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
        name = "charsetdetect-ae";
        version = "1.1.0.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Artyom <yom@artyom.me>";
      author = "Max Bolingbroke <batterseapower@hotmail.com>";
      homepage = "http://github.com/aelve/charsetdetect-ae";
      url = "";
      synopsis = "Character set detection using Mozilla's Universal Character Set Detector";
      description = "Mozilla have developed a robust and efficient character set detection algorithm for use in their web browsers. The algorithm is able to detect all of the most frequently encountered character encodings totally automatically.\n\nThis library wraps up their library and exposes a very simple Haskell interface to it. The library is portable, and is confirmed to work on both Unix and Windows.\n\nThis library is a /maintained/ fork of charsetdetect:\n\n* It compiles with recent version of bytestring.\n\n* It works correctly in presence of Template Haskell on GHC 7.6.\n\n* It builds on 64-bit Windows.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = if system.isWindows
          then if system.isX86_64
            then [
              (pkgs."stdc++-6")
              (pkgs."gcc_s_seh-1")
            ]
            else [
              (pkgs."stdc++-6")
              (pkgs."gcc_s_dw2-1")
            ]
          else [ (pkgs."stdc++") ];
      };
    };
  }