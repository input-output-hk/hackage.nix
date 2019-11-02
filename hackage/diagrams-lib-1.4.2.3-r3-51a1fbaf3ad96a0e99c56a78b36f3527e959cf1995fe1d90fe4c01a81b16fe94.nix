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
      specVersion = "1.18";
      identifier = { name = "diagrams-lib"; version = "1.4.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "http://projects.haskell.org/diagrams";
      url = "";
      synopsis = "Embedded domain-specific language for declarative graphics";
      description = "Diagrams is a flexible, extensible EDSL for creating\ngraphics of many types.  Graphics can be created\nin arbitrary vector spaces and rendered with\nmultiple backends.  diagrams-lib provides a\nstandard library of primitives and operations for\ncreating diagrams.  To get started using it, see\nthe \"Diagrams\" module, and refer to the tutorials and\ndocumentation on the diagrams website,\n<http://projects.haskell.org/diagrams>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."monoid-extras" or (buildDepError "monoid-extras"))
          (hsPkgs."dual-tree" or (buildDepError "dual-tree"))
          (hsPkgs."diagrams-core" or (buildDepError "diagrams-core"))
          (hsPkgs."diagrams-solve" or (buildDepError "diagrams-solve"))
          (hsPkgs."active" or (buildDepError "active"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."fingertree" or (buildDepError "fingertree"))
          (hsPkgs."intervals" or (buildDepError "intervals"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."adjunctions" or (buildDepError "adjunctions"))
          (hsPkgs."distributive" or (buildDepError "distributive"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."distributive" or (buildDepError "distributive"))
            (hsPkgs."numeric-extras" or (buildDepError "numeric-extras"))
            (hsPkgs."diagrams-solve" or (buildDepError "diagrams-solve"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."diagrams-core" or (buildDepError "diagrams-core"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            ];
          buildable = true;
          };
        };
      };
    }