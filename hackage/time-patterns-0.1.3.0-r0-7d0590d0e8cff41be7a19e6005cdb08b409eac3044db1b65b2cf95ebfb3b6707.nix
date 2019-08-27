let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "time-patterns"; version = "0.1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Jann Müller";
      maintainer = "j.mueller.11@ucl.ac.uk";
      author = "Jann Müller";
      homepage = "https://bitbucket.org/jfmueller/time-patterns";
      url = "";
      synopsis = "Patterns for recurring events.";
      description = "This package contains a set of primitives and combinators for event patterns. Example:\n\n> >> import qualified Prelude as P\n> >> let sundays = every 2 sunday\n> >> let today = (YearMonthDay 2013 12 01)^.from gregorian\n> >> P.take 2 \$ instancesFrom today sundays\n> [2013-12-08, 2013-12-22]\n\nSee @Data.Time.Patterns@ for more examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."intervals" or (buildDepError "intervals"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."thyme" or (buildDepError "thyme"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          ];
        };
      };
    }