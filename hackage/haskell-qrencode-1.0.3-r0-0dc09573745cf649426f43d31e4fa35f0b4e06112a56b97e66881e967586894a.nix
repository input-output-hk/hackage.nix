{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "haskell-qrencode"; version = "1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "james.sanders@thisismedium.com";
      author = "James Sanders";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for libqrencode.";
      description = "Haskell bindings for libqrencode.\nLibqrencode is a C library for encoding data in a QR Code symbol, a kind of 2D symbology\nthat can be scanned by handy terminals such as a mobile phone with CCD. The capacity of\nQR Code is up to 7000 digits or 4000 characters, and is highly robust.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = [ (pkgs."qrencode" or (errorHandler.sysDepError "qrencode")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }