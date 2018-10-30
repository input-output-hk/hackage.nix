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
        name = "drmaa";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "A minimal Haskell bindings to DRMAA C library.";
      description = "A minimal Haskell bindings to DRMAA C library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.inline-c)
          (hsPkgs.text)
          (hsPkgs.shelly)
        ];
        libs = [ (pkgs."drmaa") ];
      };
    };
  }