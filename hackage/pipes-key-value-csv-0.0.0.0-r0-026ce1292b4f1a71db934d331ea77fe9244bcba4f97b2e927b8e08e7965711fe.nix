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
    flags = { devel = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pipes-key-value-csv"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Marcin Mrotek, 2015";
      maintainer = "marcin.jan.mrotek@gmail.com";
      author = "Marcin Mrotek";
      homepage = "https://github.com/marcinmrotek/key-value-csv";
      url = "";
      synopsis = "Streaming processing of CSV files preceded by key-value pairs.";
      description = "Nonstandard CSV files, with the table preceded by a header consisting of key-value pairs are often the output format of varius test equipment, such as digital oscilloscopes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
          (hsPkgs."pipes-group" or (buildDepError "pipes-group"))
          (hsPkgs."pipes-parse" or (buildDepError "pipes-parse"))
          (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
          (hsPkgs."pipes-text" or (buildDepError "pipes-text"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."validation" or (buildDepError "validation"))
          (hsPkgs."vinyl" or (buildDepError "vinyl"))
          (hsPkgs."vinyl-utils" or (buildDepError "vinyl-utils"))
          ];
        buildable = true;
        };
      tests = {
        "test-kvc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."contravariant" or (buildDepError "contravariant"))
            (hsPkgs."pipes-key-value-csv" or (buildDepError "pipes-key-value-csv"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-text" or (buildDepError "pipes-text"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."validation" or (buildDepError "validation"))
            (hsPkgs."vinyl" or (buildDepError "vinyl"))
            (hsPkgs."vinyl-utils" or (buildDepError "vinyl-utils"))
            ];
          buildable = true;
          };
        };
      };
    }