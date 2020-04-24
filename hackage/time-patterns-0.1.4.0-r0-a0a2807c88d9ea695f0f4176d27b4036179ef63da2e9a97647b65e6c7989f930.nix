{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "time-patterns"; version = "0.1.4.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."intervals" or ((hsPkgs.pkgs-errors).buildDepError "intervals"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }