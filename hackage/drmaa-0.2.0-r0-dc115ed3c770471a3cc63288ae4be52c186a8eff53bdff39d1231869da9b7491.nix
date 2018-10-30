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
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2017 Kai Zhang";
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
          (hsPkgs.directory)
        ];
        libs = [ (pkgs."drmaa") ];
      };
    };
  }