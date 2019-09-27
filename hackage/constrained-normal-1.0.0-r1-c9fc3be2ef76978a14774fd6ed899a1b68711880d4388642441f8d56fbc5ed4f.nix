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
      identifier = { name = "constrained-normal"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 The University of Kansas";
      maintainer = "Neil Sculthorpe <neil.sculthorpe@ntu.ac.uk>";
      author = "Neil Sculthorpe";
      homepage = "http://www.ittc.ku.edu/csdl/fpg/theory/constrained-monad-problem.html";
      url = "";
      synopsis = "Normalised Deep Embeddings for Constrained Type-Class Instances";
      description = "The package provides normal forms for monads and related structures, similarly to the Operational package.\nThe difference is that we parameterise the normal forms on a constraint, and apply that constraint to all\nexistential types within the normal form.\nThis allows monad (and other) instances to be generated for underlying types that require constraints on\ntheir return-like and bind-like operations, e.g. Set.\n\nThis is documented in the following paper:\n\nThe Constrained-Monad Problem.  Neil Sculthorpe and Jan Bracker and George Giorgidze and Andy Gill.  2013.\n<http://dx.doi.org/10.1145/2500365.2500602>\n\nThe functionality exposed by this library is also used internally by the Set-Monad and RMonad packages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      };
    }