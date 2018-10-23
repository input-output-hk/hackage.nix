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
        name = "time-patterns";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Jann Müller";
      maintainer = "j.mueller.11@ucl.ac.uk";
      author = "Jann Müller";
      homepage = "https://bitbucket.org/jfmueller/time-patterns";
      url = "";
      synopsis = "Patterns for re-occurring events.";
      description = "This package contains a set of primitives and combinators for event patterns. Example:\n\n> >> import qualified Prelude as P\n> >> let sundays = every 2 sunday\n> >> let today = (YearMonthDay 2013 12 01)^.from gregorian\n> >> P.take 2 \$ instancesFrom today sundays\n> [2013-12-08, 2013-12-22]\n\nSee @Data.Time.Patterns@ for more examples.";
      buildType = "Simple";
    };
    components = {
      "time-patterns" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.intervals)
          (hsPkgs.lens)
          (hsPkgs.thyme)
          (hsPkgs.vector-space)
        ];
      };
    };
  }