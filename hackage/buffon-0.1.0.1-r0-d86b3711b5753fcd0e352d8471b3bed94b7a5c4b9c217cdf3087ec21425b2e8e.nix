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
        name = "buffon";
        version = "0.1.0.1";
      };
      license = "BSD-2-Clause";
      copyright = "2015 Derek Elkins";
      maintainer = "derek.a.elkins+github@gmail.com";
      author = "Derek Elkins";
      homepage = "https://github.com/derekelkins/buffon";
      url = "";
      synopsis = "An implementation of Buffon machines.";
      description = "An implementation of everything in \"On Buffon Machines and Numbers\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.monad-primitive)
          (hsPkgs.primitive)
          (hsPkgs.mwc-random)
          (hsPkgs.mwc-random-monad)
          (hsPkgs.transformers)
        ];
      };
    };
  }