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
        name = "acme-omitted";
        version = "1.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Joachim Fasting";
      maintainer = "joachim.fasting@gmail.com";
      author = "Joachim Fasting";
      homepage = "https://github.com/joachifm/acme-omitted#readme";
      url = "";
      synopsis = "Purely functional omitted content for Haskell";
      description = "Standard Haskell lacks the ability to express the notion of \\\"omitted content\\\",\nmaking it impossible to distinguish the truly \\\"undefined\\\" and the\nmerely \\\"omitted\\\".\n\nacme-omitted implements a universal definition of \\\"omitted\\\" and provides\nmeans of observing whether a definition has been omitted or if it is truly\nundefined.\n\nThe library is standards-compliant, type-safe, and user-friendly.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "specs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
          ];
        };
      };
    };
  }