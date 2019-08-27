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
      specVersion = "1.6";
      identifier = { name = "bool-extras"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Lokhorst <tom@lokhorst.eu>";
      author = "Erik Hesselink,\nJeroen Leeuwestein,\nTom Lokhorst,\nSebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "A fold function for Bool";
      description = "The `bool' function allows folding over boolean values.\n\nThis is comparable to the `maybe' or `either' functions\non their respective types.\n\nThe `bool' function is a replacement for the build-in\n@if then else@-syntax. However, since it is a function, it\ncan be partially applied and passed around to higher order\nfunctions, like so:\n\n> ghci> :m + Data.Bool.Extras\n> ghci> let yesOrNo = bool \"no\" \"yes\"\n> ghci> map yesOrNo [True, False, True]\n> [\"yes\", \"no\", \"yes\"]\n\nNote that the arguments to `bool' are in the opposite order\nof the @if then else@-syntax; First the false value, then\nthe true value, and finally the boolean.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      };
    }