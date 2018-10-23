{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.0";
      identifier = {
        name = "monad-interleave";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009. Patrick Perry <patperry@stanford.edu>";
      maintainer = "Patrick Perry <patperry@stanford.edu>";
      author = "Patrick Perry";
      homepage = "http://github.com/patperry/monad-interleave";
      url = "";
      synopsis = "Monads with an unsaveInterleaveIO-like operation.";
      description = "A type class for monads that have an \\\"unsafeInterleave\\\" operation.\nInstances are provided for IO and both strict and lazy ST.";
      buildType = "Custom";
    };
    components = {
      "monad-interleave" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }