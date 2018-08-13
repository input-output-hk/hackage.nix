{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "time-patterns";
        version = "0.1.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2017 Jann Müller, (C) 2015 Moritz Kiefer";
      maintainer = "j.mueller.11@ucl.ac.uk";
      author = "Jann Müller, Moritz Kiefer";
      homepage = "https://github.com/j-mueller/time-patterns";
      url = "";
      synopsis = "Patterns for recurring events.";
      description = "This package contains a set of primitives and combinators for event patterns. Example:\n\n> >> import qualified Prelude as P\n> >> let sundays = every 2 sunday\n> >> let today = fromGregorian 2013 12 01\n> >> P.take 2 \$ instancesFrom today sundays\n> [2013-12-08, 2013-12-22]\n\nSee @Data.Time.Patterns@ for more examples.";
      buildType = "Simple";
    };
    components = {
      "time-patterns" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.intervals)
          (hsPkgs.time)
        ];
      };
    };
  }