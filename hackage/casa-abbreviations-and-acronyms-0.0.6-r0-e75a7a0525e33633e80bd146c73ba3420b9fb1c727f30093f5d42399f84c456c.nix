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
      identifier = {
        name = "casa-abbreviations-and-acronyms";
        version = "0.0.6";
        };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018 Commonwealth Scientific and Industrial Research Organisation (CSIRO)";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/casa-abbreviations-and-acronyms";
      url = "";
      synopsis = "CASA Abbreviations and Acronyms";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nCASA Abbreviations and Acronyms\n\nhttps://www.casa.gov.au/about-us/standard-page/aviation-abbreviations-and-acronyms";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."fuzzy" or (buildDepError "fuzzy"))
          (hsPkgs."monoid-subclasses" or (buildDepError "monoid-subclasses"))
          (hsPkgs."wreq" or (buildDepError "wreq"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."these" or (buildDepError "these"))
          ];
        };
      exes = {
        "pre-process-casa-abbreviations-and-acronyms" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wreq" or (buildDepError "wreq"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."fuzzy" or (buildDepError "fuzzy"))
            (hsPkgs."monoid-subclasses" or (buildDepError "monoid-subclasses"))
            (hsPkgs."wreq" or (buildDepError "wreq"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "casa-abbreviations-and-acronyms" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."fuzzy" or (buildDepError "fuzzy"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."casa-abbreviations-and-acronyms" or (buildDepError "casa-abbreviations-and-acronyms"))
            ];
          };
        };
      };
    }