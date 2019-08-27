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
      identifier = { name = "inspection-testing"; version = "0.1.1"; };
      license = "MIT";
      copyright = "2017 Joachim Breitner";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "https://github.com/nomeata/inspection-testing";
      url = "";
      synopsis = "GHC plugin to do inspection testing";
      description = "Some carefully crafted libraries make promises to their\nusers beyond functionality and performance.\n\nExamples are: Fusion libraries promise intermediate data\nstructures to be eliminated. Generic programming libraries promise\nthat the generic implementation is identical to the\nhand-written one. Some libraries may promise allocation-free\nor branch-free code.\n\nConventionally, the modus operandi in all these cases is\nthat the library author manually inspects the (intermediate or\nfinal) code produced by the compiler. This is not only\ntedious, but makes it very likely that some change, either\nin the library itself or the surrounding eco-system,\nbreaks the library’s promised without anyone noticing.\n\nThis package provides a disciplined way of specifying such\nproperties, and have them checked by the compiler. This way,\nthis checking can be part of the ususal development cycle\nand regressions caught early.\n\nSee the documentation in \"Test.Inspection\" or the project\nwebpage for more examples and more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      tests = {
        "NS_NP" = {
          depends = [
            (hsPkgs."inspection-testing" or (buildDepError "inspection-testing"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "generic-lens" = {
          depends = [
            (hsPkgs."inspection-testing" or (buildDepError "inspection-testing"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
            ];
          };
        "simple" = {
          depends = [
            (hsPkgs."inspection-testing" or (buildDepError "inspection-testing"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "fusion" = {
          depends = [
            (hsPkgs."inspection-testing" or (buildDepError "inspection-testing"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "text" = {
          depends = [
            (hsPkgs."inspection-testing" or (buildDepError "inspection-testing"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      };
    }