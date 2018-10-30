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
      specVersion = "1.6.0";
      identifier = {
        name = "monadIO";
        version = "0.11.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2018, Galois, Inc.";
      maintainer = "Thomas M. DuBuisson";
      author = "John Launchbury";
      homepage = "";
      url = "";
      synopsis = "Overloading of concurrency variables";
      description = "MonadIO provides for many IO operations to be\noverloaded over other IO-like monads.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.mtl)
        ];
      };
    };
  }