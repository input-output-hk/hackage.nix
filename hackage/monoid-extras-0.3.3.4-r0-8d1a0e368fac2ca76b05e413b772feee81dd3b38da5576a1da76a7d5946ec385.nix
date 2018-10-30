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
        name = "monoid-extras";
        version = "0.3.3.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "Various extra monoid-related definitions and utilities";
      description = "Various extra monoid-related definitions and utilities,\nsuch as monoid actions, monoid coproducts, \\\"deletable\\\"\nmonoids, \\\"split\\\" monoids, and \\\"cut\\\" monoids.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.groups)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
        ];
      };
    };
  }