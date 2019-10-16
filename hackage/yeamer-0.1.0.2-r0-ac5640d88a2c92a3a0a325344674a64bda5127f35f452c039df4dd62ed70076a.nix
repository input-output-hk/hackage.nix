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
      identifier = { name = "yeamer"; version = "0.1.0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) jsag \$ hvl.no";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/yeamer";
      url = "";
      synopsis = "Yesod-based server for interactive presentation slides";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."yesod" or (buildDepError "yesod"))
          (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
          (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
          (hsPkgs."js-jquery" or (buildDepError "js-jquery"))
          (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."numbered-semigroups" or (buildDepError "numbered-semigroups"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."TeX-my-math" or (buildDepError "TeX-my-math"))
          (hsPkgs."dumb-cas" or (buildDepError "dumb-cas"))
          (hsPkgs."HaTeX" or (buildDepError "HaTeX"))
          (hsPkgs."texmath" or (buildDepError "texmath"))
          (hsPkgs."xml" or (buildDepError "xml"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
          (hsPkgs."these" or (buildDepError "these"))
          (hsPkgs."these-lens" or (buildDepError "these-lens"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."flat" or (buildDepError "flat"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ] ++ (if system.isWindows
          then [ (hsPkgs."directory" or (buildDepError "directory")) ]
          else [
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ]);
        buildable = true;
        };
      exes = {
        "test-presentation" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."yeamer" or (buildDepError "yeamer"))
            (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
            (hsPkgs."TeX-my-math" or (buildDepError "TeX-my-math"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."numbered-semigroups" or (buildDepError "numbered-semigroups"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-cairo" or (buildDepError "diagrams-cairo"))
            (hsPkgs."flat" or (buildDepError "flat"))
            ];
          buildable = true;
          };
        "yeamer-demo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."yeamer" or (buildDepError "yeamer"))
            (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
            (hsPkgs."TeX-my-math" or (buildDepError "TeX-my-math"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."numbered-semigroups" or (buildDepError "numbered-semigroups"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-cairo" or (buildDepError "diagrams-cairo"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."yeamer" or (buildDepError "yeamer"))
            (hsPkgs."numbered-semigroups" or (buildDepError "numbered-semigroups"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            ];
          buildable = true;
          };
        };
      };
    }