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
      identifier = { name = "large-hashable"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2015 - 2016 factis research GmbH";
      maintainer = "Stefan Wehr <wehr@cp-med.com>";
      author = "Stefan Wehr, Lukas Epple";
      homepage = "https://github.com/factisresearch/large-hashable";
      url = "";
      synopsis = "Efficiently hash (large) Haskell values";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."bytes" or (buildDepError "bytes"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."utf8-light" or (buildDepError "utf8-light"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."void" or (buildDepError "void"))
          ];
        };
      tests = {
        "large-hashable-test" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."HTF" or (buildDepError "HTF"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytes" or (buildDepError "bytes"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."large-hashable" or (buildDepError "large-hashable"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      benchmarks = {
        "large-hashable-benchmark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."large-hashable" or (buildDepError "large-hashable"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."byteable" or (buildDepError "byteable"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."bytes" or (buildDepError "bytes"))
            ];
          };
        };
      };
    }