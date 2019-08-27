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
      identifier = { name = "colonnade"; version = "1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/colonnade#readme";
      url = "";
      synopsis = "Generic types and functions for columnar encoding and decoding";
      description = "The `colonnade` package provides a way to to talk about\ncolumnar encodings and decodings of data. This package provides\nvery general types and does not provide a way for the end-user\nto actually apply the columnar encodings they build to data.\nMost users will also want to one a companion packages\nthat provides (1) a content type and (2) functions for feeding\ndata into a columnar encoding:\n\n* <https://hackage.haskell.org/package/lucid-colonnade lucid-colonnade> for `lucid` html tables\n\n* <https://hackage.haskell.org/package/blaze-colonnade blaze-colonnade> for `blaze` html tables\n\n* <https://hackage.haskell.org/package/reflex-dom-colonnade reflex-dom-colonnade> for reactive `reflex-dom` tables\n\n* <https://hackage.haskell.org/package/yesod-colonnade yesod-colonnade> for `yesod` widgets\n\n* <http://hackage.haskell.org/package/siphon siphon> for encoding and decoding CSVs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."colonnade" or (buildDepError "colonnade"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          };
        };
      };
    }