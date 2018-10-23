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
        name = "aeson-compat";
        version = "0.3.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/aeson-compat#readme";
      url = "";
      synopsis = "Compatibility layer for aeson";
      description = "Compatibility layer for @aeson@";
      buildType = "Simple";
    };
    components = {
      "aeson-compat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.nats)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.time-locale-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.semigroups)
          (hsPkgs.tagged)
        ];
      };
      tests = {
        "aeson-compat-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.exceptions)
            (hsPkgs.hashable)
            (hsPkgs.nats)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.time-locale-compat)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.semigroups)
            (hsPkgs.tagged)
            (hsPkgs.aeson-compat)
            (hsPkgs.base-orphans)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
          ];
        };
      };
    };
  }