{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "drmaa";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "A simple Haskell bindings to DRMAA C library.";
      description = "A simple Haskell bindings to DRMAA C library.";
      buildType = "Simple";
    };
    components = {
      "drmaa" = {
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