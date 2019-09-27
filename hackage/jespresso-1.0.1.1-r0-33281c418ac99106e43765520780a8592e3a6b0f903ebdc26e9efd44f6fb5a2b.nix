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
      identifier = { name = "jespresso"; version = "1.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2015 Stevens Institute of Technology";
      maintainer = "Andrey Chudnov <oss@chudnov.com>";
      author = "Andrey Chudnov";
      homepage = "http://github.com/achudnov/jespresso";
      url = "";
      synopsis = "Extract all JavaScript from an HTML page and consolidate it in one script.";
      description = "Allows extraction and consolidation of JavaScript code in an HTML page so that it behaves like the original. Consolidation is a process of transforming an HTML page into an equivalent, but containing JavaScript code only in one inlined script tag. Note that the package versions follow Semantic Versioning model (semver.org).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hxt" or (buildDepError "hxt"))
          (hsPkgs."hxt-tagsoup" or (buildDepError "hxt-tagsoup"))
          (hsPkgs."arrows" or (buildDepError "arrows"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."language-ecmascript" or (buildDepError "language-ecmascript"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."http-encodings" or (buildDepError "http-encodings"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."data-default-instances-base" or (buildDepError "data-default-instances-base"))
          ];
        buildable = true;
        };
      exes = {
        "jespresso" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."jespresso" or (buildDepError "jespresso"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            ];
          buildable = true;
          };
        };
      tests = {
        "unittest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."jespresso" or (buildDepError "jespresso"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (buildDepError "tasty-golden"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."arrows" or (buildDepError "arrows"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."Diff" or (buildDepError "Diff"))
            ];
          buildable = true;
          };
        };
      };
    }