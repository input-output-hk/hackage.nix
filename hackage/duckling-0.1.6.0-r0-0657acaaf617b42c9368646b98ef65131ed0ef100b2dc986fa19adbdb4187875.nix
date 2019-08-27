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
      identifier = { name = "duckling"; version = "0.1.6.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2014-present, Facebook, Inc.";
      maintainer = "duckling-team@fb.com";
      author = "Facebook, Inc.";
      homepage = "https://github.com/facebookincubator/duckling#readme";
      url = "";
      synopsis = "A Haskell library for parsing text into structured data.";
      description = "Duckling is a library for parsing text into structured data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."regex-base" or (buildDepError "regex-base"))
          (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-show" or (buildDepError "text-show"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."timezone-series" or (buildDepError "timezone-series"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        };
      exes = {
        "duckling-regen-exe" = {
          depends = [
            (hsPkgs."duckling" or (buildDepError "duckling"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        "duckling-example-exe" = {
          depends = [
            (hsPkgs."duckling" or (buildDepError "duckling"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."snap-server" or (buildDepError "snap-server"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-show" or (buildDepError "text-show"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."timezone-olson" or (buildDepError "timezone-olson"))
            (hsPkgs."timezone-series" or (buildDepError "timezone-series"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        "custom-dimension-example" = {
          depends = [
            (hsPkgs."duckling" or (buildDepError "duckling"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-show" or (buildDepError "text-show"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        "duckling-request-sample" = {
          depends = [
            (hsPkgs."duckling" or (buildDepError "duckling"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."timezone-olson" or (buildDepError "timezone-olson"))
            (hsPkgs."timezone-series" or (buildDepError "timezone-series"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        "duckling-expensive" = {
          depends = [
            (hsPkgs."duckling" or (buildDepError "duckling"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."timezone-olson" or (buildDepError "timezone-olson"))
            (hsPkgs."timezone-series" or (buildDepError "timezone-series"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        };
      tests = {
        "duckling-test" = {
          depends = [
            (hsPkgs."duckling" or (buildDepError "duckling"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          };
        };
      };
    }