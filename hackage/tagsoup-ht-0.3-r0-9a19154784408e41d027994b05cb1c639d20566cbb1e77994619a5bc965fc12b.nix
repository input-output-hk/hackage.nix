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
      specVersion = "0";
      identifier = { name = "tagsoup-ht"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <tagsoup@henning-thielemann.de>";
      author = "Henning Thielemann <tagsoup@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/tagsoup-ht/";
      url = "";
      synopsis = "alternative parser for the tagsoup package";
      description = "TagSoup is a package for parsing and extracting information from (possibly malformed) HTML/XHTML documents.\nHere I present my own parser,\nwhich I find (of course) more comprehensible and easier to extend.\nIt also handles XML declarations and CDATA sections correctly.\nThis package is abandoned and will be renamed to Tagchup.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."xml-basic" or (buildDepError "xml-basic"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
          (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      exes = {
        "tagsouptest" = {
          depends = [
            (hsPkgs."xml-basic" or (buildDepError "xml-basic"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "tagsoupspeed" = {
          depends = [
            (hsPkgs."xml-basic" or (buildDepError "xml-basic"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ];
          };
        "validate-tagsoup" = {
          depends = [
            (hsPkgs."xml-basic" or (buildDepError "xml-basic"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }