{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "random-access-list";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008, Stephan Friedrichs";
      maintainer = "Stephan Friedrichs (deduktionstheorem at web dot de)";
      author = "Stephan Friedrichs";
      homepage = "";
      url = "";
      synopsis = "Random-access lists in Haskell";
      description = "A purely functional random-access list implementation\nusing skew binary number representation. These lists\noffer indexed random-access in logarithmic time while\nstill providing typical list functionality (head, tail,\ncons) in constant time. See \\\"Purely Functional Data\nStructures\\\" by Chris Okasaki.";
      buildType = "Custom";
    };
    components = {
      "random-access-list" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }