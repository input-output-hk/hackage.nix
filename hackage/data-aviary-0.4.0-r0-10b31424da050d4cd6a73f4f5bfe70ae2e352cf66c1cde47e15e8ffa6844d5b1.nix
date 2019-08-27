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
      specVersion = "1.2";
      identifier = { name = "data-aviary"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Combinator birds.";
      description = "\nA catalogue of the combinator birds (Data.Aviary.Birds etc.) -\nthese modules are intended for illustration and-or reference\n(i.e. looking up combinators by their type signature).\n\nUsing @Data.Aviary@ as a library (i.e. depending on it for\nother packages) is not recommended: combinator-mania leads to\ninscrutable code.\n\n\nChangelog\n\nv0.4.0:\n\n* Removed the \\\"useful\\\" combinators (to emphasize that\nData.Aviary is not a utility library).\n\n* Fixed typos in Haddock docs - thanks to Christopher Young for\nspotting them.\n\nv0.3.0:\n\n* Added Monadic variations.\n\nv0.2.3:\n\n* Added Data.Aviary.BirdsVersion - same as the original Birds\nmodule, but with type signatures following a revised naming\nscheme.\n\nv0.2.2:\n\n* Added Data.Aviary.Functional - the Applicative, Monad etc.\ncombinatorswith implementations and signatures specialized to\nthe (simple) functional type cf. the Reader monad.\n\nv0.2.1:\n\n* Added @dup@ and the /combiner/ variants of cardinal-prime.\n\nv0.2.0:\n\n* Added Haddock docs for @(\\#\\#)@.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      };
    }