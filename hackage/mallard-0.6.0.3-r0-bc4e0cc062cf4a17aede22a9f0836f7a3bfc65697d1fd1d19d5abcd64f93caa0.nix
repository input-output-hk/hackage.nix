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
      identifier = { name = "mallard"; version = "0.6.0.3"; };
      license = "MIT";
      copyright = "2017 Andrew Rademacher <andrewrademacher@icloud.com>";
      maintainer = "andrewrademacher@icloud.com";
      author = "Andrew Rademacher";
      homepage = "https://github.com/AndrewRademacher/mallard";
      url = "";
      synopsis = "Database migration and testing as a library.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."byteable" or (buildDepError "byteable"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."hasql" or (buildDepError "hasql"))
          (hsPkgs."hasql-pool" or (buildDepError "hasql-pool"))
          (hsPkgs."hasql-transaction" or (buildDepError "hasql-transaction"))
          (hsPkgs."Interpolation" or (buildDepError "Interpolation"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."path" or (buildDepError "path"))
          (hsPkgs."path-io" or (buildDepError "path-io"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        };
      exes = {
        "mallard" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mallard" or (buildDepError "mallard"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."hasql" or (buildDepError "hasql"))
            (hsPkgs."hasql-optparse-applicative" or (buildDepError "hasql-optparse-applicative"))
            (hsPkgs."hasql-pool" or (buildDepError "hasql-pool"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."optparse-text" or (buildDepError "optparse-text"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."path-io" or (buildDepError "path-io"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        };
      };
    }