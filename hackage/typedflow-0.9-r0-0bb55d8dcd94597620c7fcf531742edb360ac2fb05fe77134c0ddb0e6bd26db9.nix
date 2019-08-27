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
      specVersion = "1.12";
      identifier = { name = "typedflow"; version = "0.9"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "jean-philippe.bernardy@gu.se";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "Typed frontend to TensorFlow and higher-order deep learning";
      description = "TypedFlow is a typed, higher-order frontend to TensorFlow and a high-level library for deep-learning.\n\nThe main design principles are:\n\n- To make the parameters of layers explicit. This choice makes sharing of parameters explicit and allows to implement \"layers\" as pure functions.\n\n- To provide as precise as possible types. Functions are explicit about the shapes and elements of the tensors that they manipulate (they are often polymorphic in shapes and elements though.)\n\n- To let combinators be as transparent as possible. If a NN layers is a simple tensor transformation it will be exposed as such.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-typelits-knownnat" or (buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."pretty-compact" or (buildDepError "pretty-compact"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      };
    }