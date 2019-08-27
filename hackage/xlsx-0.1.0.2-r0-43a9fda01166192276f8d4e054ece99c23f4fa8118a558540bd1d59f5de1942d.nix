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
      identifier = { name = "xlsx"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "qrilka@gmail.com";
      author = "Tim, Max, Kirill Zaborsky";
      homepage = "https://github.com/qrilka/xlsx";
      url = "";
      synopsis = "Simple and incomplete Excel file parser/writer";
      description = "This library can help you to get some data read and written in Office\nOpen XML xlsx format. Small subset of xlsx format is supported.\n\nFor examples look into \"Codec.Xlsx\".\n\nFormat is covered by ECMA-376 standard:\n<http://www.ecma-international.org/publications/standards/Ecma-376.htm>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."xml-types" or (buildDepError "xml-types"))
          (hsPkgs."xml-conduit" or (buildDepError "xml-conduit"))
          (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
          (hsPkgs."digest" or (buildDepError "digest"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          ];
        };
      exes = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."xml-types" or (buildDepError "xml-types"))
            (hsPkgs."xml-conduit" or (buildDepError "xml-conduit"))
            (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."digest" or (buildDepError "digest"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            ];
          };
        };
      tests = {
        "data-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."xlsx" or (buildDepError "xlsx"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          };
        };
      };
    }