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
    flags = {
      new-data-object = true;
      new-template-haskell = true;
      haxml_1_13 = false;
      };
    package = {
      specVersion = "1.2";
      identifier = { name = "property-list"; version = "0.0.0.7"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "http://code.haskell.org/~mokus/property-list";
      url = "";
      synopsis = "XML property list parser";
      description = "Parser, data type and formatter for Apple's XML property list 1.0 format.\nThe bytestring-0.9.1.5 update on hackage seems to have\ncratered the build for many packages, including the last\nseveral versions of this one, so this version will\nprobably not build properly on the hackage site.\nAs far as I know, though, that is the only reason\nit fails. This version includes a hack to try to make\nit build on the site, triggered by the HaXml_1_13 build flag.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytestring-class" or (buildDepError "bytestring-class"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."dataenc" or (buildDepError "dataenc"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."th-fold" or (buildDepError "th-fold"))
          ] ++ [
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ]) ++ [
          (hsPkgs."data-object" or (buildDepError "data-object"))
          ]) ++ (if flags.haxml_1_13
          then [
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-class" or (buildDepError "bytestring-class"))
            (hsPkgs."data-object" or (buildDepError "data-object"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ]
          else [ (hsPkgs."HaXml" or (buildDepError "HaXml")) ]);
        buildable = true;
        };
      };
    }