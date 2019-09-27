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
      identifier = { name = "highlight-versions"; version = "0.1.3.6"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2012 Brent Yorgey";
      maintainer = "byorgey@gmail.com";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "Highlight package versions which differ from the latest\nversion on Hackage";
      description = "This package provides an executable which reads from\nstdin and outputs the same thing to stdout,\nexcept that any lines which look like package\nidentifiers (e.g. foo-0.3.2) are highlighted:\nred if the version is less than the\nversion on Hackage, green if equal,\nor cyan if greater.  In\naddition, when the versions are unequal the\nHackage version is shown in blue.\n\nIn particular, it can be useful to pipe the\noutput of @cabal(-dev) install --dry-run@ through\nthis program, to aid in checking the install\nplan. It's usually a good idea to understand why\nan outdated package is being installed; otherwise\nit can indicate that something needs to be updated.\n\nPLEASE NOTE that highlight-versions does not\nactually consult Hackage, but rather your local\nindex of Hackage cached by cabal. You must call\n'cabal update' to be sure that\nhighlight-versions has access to the latest\ninformation about package versions on Hackage.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "highlight-versions" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hackage-db" or (buildDepError "hackage-db"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            ];
          buildable = true;
          };
        };
      };
    }