{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { haste = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haste-prim";
        version = "0.6.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "http://haste-lang.org";
      url = "";
      synopsis = "Low level primitives for the Haste compiler.";
      description = "FFI and low-level hackery for haste-lib to build on.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ] ++ [ (hsPkgs.integer-gmp) ];
      };
    };
  }