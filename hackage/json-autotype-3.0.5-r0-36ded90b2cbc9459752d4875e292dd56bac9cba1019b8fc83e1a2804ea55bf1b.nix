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
      identifier = { name = "json-autotype"; version = "3.0.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright by Migamake '2014-'2020";
      maintainer = "simons@cryp.to,\nmjgajda@gmail.com";
      author = "Michal J. Gajda";
      homepage = "https://github.com/mgajda/json-autotype.git#readme";
      url = "";
      synopsis = "Automatic type declaration for JSON input data";
      description = "Generates datatype declarations with Aeson''s ''Data.Aeson.FromJSON''\n\ninstances from a set of example @.json@ files.\n\n\nTo get started you need to install the package,\n\nand run @json-autotype@ binary on an input @.json@ file.\n\nThat will generate a new Aeson-based JSON parser.\n\n\n> \$ json-autotype input.json -o JSONTypes.hs\n\n\nFeel free to tweak the by changing types of the fields\n\n— any field type that is instance of ''Data.Aeson.FromJSON'' should work.\n\n\nYou may immediately test the parser by calling it as a script:\n\n\n> \$ runghc JSONTypes.hs input.json\n\n\nOne can now use multiple input files to generate better type description.\n\n\nNow with Elm code generation support!\n\n(If you want your favourite programming language supported too —\n\nname your price and mail the author.)\n\n\nSee introduction on <https://github.com/mgajda/json-autotype> for details.'\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."GenericPretty" or (buildDepError "GenericPretty"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."json-alt" or (buildDepError "json-alt"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."run-haskell-module" or (buildDepError "run-haskell-module"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."uniplate" or (buildDepError "uniplate"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "json-autotype" = {
          depends = [
            (hsPkgs."GenericPretty" or (buildDepError "GenericPretty"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."json-alt" or (buildDepError "json-alt"))
            (hsPkgs."json-autotype" or (buildDepError "json-autotype"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      tests = {
        "json-autotype-examples" = {
          depends = [
            (hsPkgs."GenericPretty" or (buildDepError "GenericPretty"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."json-alt" or (buildDepError "json-alt"))
            (hsPkgs."json-autotype" or (buildDepError "json-autotype"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "json-autotype-gen-test" = {
          depends = [
            (hsPkgs."GenericPretty" or (buildDepError "GenericPretty"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."json-alt" or (buildDepError "json-alt"))
            (hsPkgs."json-autotype" or (buildDepError "json-autotype"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "json-autotype-qc-test" = {
          depends = [
            (hsPkgs."GenericPretty" or (buildDepError "GenericPretty"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."json-alt" or (buildDepError "json-alt"))
            (hsPkgs."json-autotype" or (buildDepError "json-autotype"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }