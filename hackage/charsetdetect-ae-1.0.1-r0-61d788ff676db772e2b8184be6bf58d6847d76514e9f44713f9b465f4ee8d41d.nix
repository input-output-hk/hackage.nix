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
        version = "1.0.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Artyom <yom@artyom.me>";
      author = "Max Bolingbroke <batterseapower@hotmail.com>";
      homepage = "http://github.com/Aelve/charsetdetect-ae";
      url = "";
      synopsis = "Character set detection using Mozilla's Universal Character Set Detector";
      description = "Mozilla have developed a robust and efficient character set detection algorithm for\nuse in their web browsers.  The algorithm is able to detect all of the most frequently\nencountered character encodings totally automatically.\n\nThis library wraps up their library and exposes a very simple Haskell interface to it.\nThe library is portable, and is confirmed to work on both Unix and Windows.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs."stdc++") ];
      };
    };
  }