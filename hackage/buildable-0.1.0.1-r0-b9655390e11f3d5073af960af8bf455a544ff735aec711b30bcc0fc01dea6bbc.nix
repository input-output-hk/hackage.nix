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
      identifier = { name = "buildable"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Typeclass for builders of linear data structures";
      description = "Various linear data structures can be expensive to construct in a\nrepetitive fashion.  For example, to append a single value to the end\nof a list is @O(n)@, and as such doing so repeatedly is recommended\nagainst.\n\nAs such, to efficiently construct such structures we have the notion\nof a /builder/.  This can be used to more efficiently prepend and\nappend values, and at the end we \\\"run\\\" the builder to construct the\noverall value.\n\nThis module provides an abstraction over various builders for specific\ndata structures.  It also aims to minimise the number of functions\nrequired to add various values to the builder by using a typeclass and\nnewtype wrappers.\n\nTo construct a value from it's builder:\n\n1. Start with either @'mempty'@ for an empty 'Builder', or if you\nhave an initial value use @'fromValue'@.\n\n2. Add initial values to the front or back using 'prepend' \\/ '<|'\nor 'append' \\/ '|>' respectively.\n\n3. Once you've finished constructing your builder, create your\nfinal value with 'build'.\n\n/Note/: all instances are defined for both strict and lazy\n@ByteString@ and @Text@ values.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      };
    }