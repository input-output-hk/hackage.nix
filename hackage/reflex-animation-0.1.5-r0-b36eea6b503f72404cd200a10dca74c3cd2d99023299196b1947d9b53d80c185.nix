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
        name = "reflex-animation";
        version = "0.1.5";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Oliver Batchelor";
      maintainer = "saulzar@gmail.com";
      author = "Oliver Batchelor";
      homepage = "https://github.com/saulzar/reflex-animation";
      url = "";
      synopsis = "Continuous animations support for reflex";
      description = "This package provides a set of functions for creating and playing continuous animations of the form Time -> a.\nFinite animations (with a length) and infinite animations complement one another, we chose a representation of\nfinite animations which has only a length (and not a starting point) to keep things simple. If needed such animations\ncan be converted to infinite animations, combined, and clipped as required.";
      buildType = "Simple";
    };
    components = {
      "reflex-animation" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.reflex)
          (hsPkgs.reflex-transformers)
          (hsPkgs.vector-space)
          (hsPkgs.semigroups)
          (hsPkgs.profunctors)
          (hsPkgs.containers)
          (hsPkgs.bifunctors)
        ];
      };
    };
  }