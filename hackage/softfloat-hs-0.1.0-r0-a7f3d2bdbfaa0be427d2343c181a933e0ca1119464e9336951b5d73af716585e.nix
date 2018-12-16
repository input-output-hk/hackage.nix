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
      specVersion = "1.10";
      identifier = {
        name = "softfloat-hs";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "March 2018";
      maintainer = "benselfridge@galois.com";
      author = "Ben Selfridge";
      homepage = "https://github.com/GaloisInc/softfloat-hs";
      url = "";
      synopsis = "Haskell bindings for SoftFloat";
      description = "Provides a pure functional interface to John Hauser's SoftFloat, an implementation\nof IEEE floating point in the C programming language.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
        libs = [ (pkgs."softfloat") ];
      };
    };
  }