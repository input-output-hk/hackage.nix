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
        name = "refurb";
        version = "0.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Confer Health, Inc.";
      maintainer = "oss@confer.care";
      author = "";
      homepage = "https://github.com/ConferHealth/refurb#readme";
      url = "";
      synopsis = "Tools for maintaining a database";
      description = "Tools for maintaining a database";
      buildType = "Simple";
    };
    components = {
      "refurb" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Frames)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.bytestring)
          (hsPkgs.classy-prelude)
          (hsPkgs.composite-base)
          (hsPkgs.composite-opaleye)
          (hsPkgs.dlist)
          (hsPkgs.fast-logger)
          (hsPkgs.lens)
          (hsPkgs.monad-logger)
          (hsPkgs.old-locale)
          (hsPkgs.opaleye)
          (hsPkgs.optparse-applicative)
          (hsPkgs.postgresql-simple)
          (hsPkgs.process)
          (hsPkgs.product-profunctors)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.these)
          (hsPkgs.thyme)
          (hsPkgs.vector-space)
        ];
      };
      tests = {
        "refurb-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Frames)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.bytestring)
            (hsPkgs.classy-prelude)
            (hsPkgs.composite-base)
            (hsPkgs.composite-opaleye)
            (hsPkgs.dlist)
            (hsPkgs.fast-logger)
            (hsPkgs.lens)
            (hsPkgs.monad-logger)
            (hsPkgs.old-locale)
            (hsPkgs.opaleye)
            (hsPkgs.optparse-applicative)
            (hsPkgs.postgresql-simple)
            (hsPkgs.process)
            (hsPkgs.product-profunctors)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.these)
            (hsPkgs.thyme)
            (hsPkgs.vector-space)
            (hsPkgs.refurb)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }