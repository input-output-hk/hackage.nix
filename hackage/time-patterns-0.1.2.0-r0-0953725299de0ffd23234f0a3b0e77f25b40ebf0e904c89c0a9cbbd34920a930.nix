{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "time-patterns"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Jann Müller";
      maintainer = "j.mueller.11@ucl.ac.uk";
      author = "Jann Müller";
      homepage = "https://bitbucket.org/jfmueller/time-patterns";
      url = "";
      synopsis = "Patterns for reccurring events.";
      description = "This package contains a set of primitives and combinators for event patterns. Example:\n\n> >> import qualified Prelude as P\n> >> let sundays = every 2 sunday\n> >> let today = (YearMonthDay 2013 12 01)^.from gregorian\n> >> P.take 2 \$ instancesFrom today sundays\n> [2013-12-08, 2013-12-22]\n\nSee @Data.Time.Patterns@ for more examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."intervals" or ((hsPkgs.pkgs-errors).buildDepError "intervals"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."thyme" or ((hsPkgs.pkgs-errors).buildDepError "thyme"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          ];
        buildable = true;
        };
      };
    }