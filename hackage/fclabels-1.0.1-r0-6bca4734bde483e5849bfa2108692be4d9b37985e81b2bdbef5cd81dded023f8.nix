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
      identifier = { name = "fclabels"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sebastiaan Visser <code@fvisser.nl>";
      author = "Sebastiaan Visser, Erik Hesselink, Chris Eidhof, Sjoerd Visscher.";
      homepage = "";
      url = "";
      synopsis = "First class accessor labels.";
      description = "This package provides first class labels that can act as\nbidirectional record fields. The labels can be derived\nautomatically using Template Haskell which means you don't have\nto write any boilerplate yourself. The labels are implemented as\nlenses and are fully composable. Labels can be used to /get/,\n/set/ and /modify/ parts of a datatype in a consistent way.\n\nSee \"Data.Label\" for an introductory explanation.\n\nInternally lenses are not tied to Haskell functions directly,\nbut are implemented as arrows. Arrows allow the lenses to be run\nin custom computational contexts. This approach allows us to\nmake partial lenses that point to fields of multi-constructor\ndatatypes in an elegant way.\n\nSee the \"Data.Label.Maybe\" module for the use of partial labels.\n\n> 1.0 -> 1.0.1\n>   - Some documentation cleanups.\n>   - Major performance improvements in setting and modifying\n>     values by inlining most label functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      };
    }