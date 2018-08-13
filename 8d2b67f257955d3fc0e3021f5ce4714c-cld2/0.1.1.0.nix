{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cld2";
        version = "0.1.1.0";
      };
      license = "Apache-2.0";
      copyright = "Copyright 2014 Daniel Fox Franke";
      maintainer = "Daniel Fox Franke <dfoxfranke@gmail.com>";
      author = "Daniel Fox Franke <dfoxfranke@gmail.com>";
      homepage = "https://github.com/dfoxfranke/haskell-cld2";
      url = "";
      synopsis = "Haskell bindings to Google's Compact Language Detector 2";
      description = "This package provides simple Haskell bindings for Compact Language\nDetector 2, a language-detection library used by Google Chrome.\nSee <https://code.google.com/p/cld2/> for more information on CLD2.";
      buildType = "Simple";
    };
    components = {
      "cld2" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.text)
        ];
        libs = [ (pkgs.stdc++) ];
      };
    };
  }