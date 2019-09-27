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
      specVersion = "1.18";
      identifier = { name = "clafer"; version = "0.3.6.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Michal Antkiewicz <mantkiew@gsd.uwaterloo.ca>";
      author = "Kacper Bak, Jimmy Liang, Michal Antkiewicz, Chris Walker, Luke Michael Brown";
      homepage = "http://clafer.org";
      url = "";
      synopsis = "clafer compiles Clafer models to other formats, such as Alloy, XML, HTML, Dot.";
      description = "Clafer is a general purpose, lightweight, structural modeling language developed at GSD Lab, University of Waterloo. Lightweight modeling aims at improving the understanding of the problem domain in the early stages of software development and determining the requirements with fewer defects. Clafer's goal is to make modeling more accessible to a wider range of users and domains. The tool provides a reference language implementation. It translates models to other formats (e.g. Alloy, XML) to allow for reasoning with existing tools.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."data-stringmap" or (buildDepError "data-stringmap"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."json-builder" or (buildDepError "json-builder"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."executable-path" or (buildDepError "executable-path"))
          (hsPkgs."glpk-hs" or (buildDepError "glpk-hs"))
          (hsPkgs."MaybeT" or (buildDepError "MaybeT"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."test-framework" or (buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
          (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
          (hsPkgs."test-framework-th" or (buildDepError "test-framework-th"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ [ (hsPkgs."HaXml" or (buildDepError "HaXml")) ];
        build-tools = [
          (hsPkgs.buildPackages.ghc or (pkgs.buildPackages.ghc or (buildToolDepError "ghc")))
          ];
        buildable = true;
        };
      exes = {
        "clafer" = {
          depends = [
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."data-stringmap" or (buildDepError "data-stringmap"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."json-builder" or (buildDepError "json-builder"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."executable-path" or (buildDepError "executable-path"))
            (hsPkgs."glpk-hs" or (buildDepError "glpk-hs"))
            (hsPkgs."MaybeT" or (buildDepError "MaybeT"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or (buildDepError "test-framework-th"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."clafer" or (buildDepError "clafer"))
            ] ++ [ (hsPkgs."HaXml" or (buildDepError "HaXml")) ];
          build-tools = [
            (hsPkgs.buildPackages.ghc or (pkgs.buildPackages.ghc or (buildToolDepError "ghc")))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."data-stringmap" or (buildDepError "data-stringmap"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."json-builder" or (buildDepError "json-builder"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."executable-path" or (buildDepError "executable-path"))
            (hsPkgs."glpk-hs" or (buildDepError "glpk-hs"))
            (hsPkgs."MaybeT" or (buildDepError "MaybeT"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or (buildDepError "test-framework-th"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."clafer" or (buildDepError "clafer"))
            ] ++ [ (hsPkgs."HaXml" or (buildDepError "HaXml")) ];
          build-tools = [
            (hsPkgs.buildPackages.ghc or (pkgs.buildPackages.ghc or (buildToolDepError "ghc")))
            ];
          buildable = true;
          };
        };
      };
    }