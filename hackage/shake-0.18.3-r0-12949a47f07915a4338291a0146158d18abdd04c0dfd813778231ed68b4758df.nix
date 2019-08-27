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
    flags = { portable = false; cloud = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "shake"; version = "0.18.3"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2011-2019";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://shakebuild.com";
      url = "";
      synopsis = "Build system library, like Make, but more accurate dependencies.";
      description = "Shake is a Haskell library for writing build systems - designed as a\nreplacement for @make@. See \"Development.Shake\" for an introduction,\nincluding an example. The homepage contains links to a user\nmanual, an academic paper and further information:\n<https://shakebuild.com>\n\nTo use Shake the user writes a Haskell program\nthat imports \"Development.Shake\", defines some build rules, and calls\nthe 'Development.Shake.shakeArgs' function. Thanks to do notation and infix\noperators, a simple Shake build system\nis not too dissimilar from a simple Makefile. However, as build systems\nget more complex, Shake is able to take advantage of the excellent\nabstraction facilities offered by Haskell and easily support much larger\nprojects. The Shake library provides all the standard features available in other\nbuild systems, including automatic parallelism and minimal rebuilds.\nShake also provides more accurate dependency tracking, including seamless\nsupport for generated files, and dependencies on system information\n(e.g. compiler version).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."filepattern" or (buildDepError "filepattern"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."heaps" or (buildDepError "heaps"))
          (hsPkgs."js-dgtable" or (buildDepError "js-dgtable"))
          (hsPkgs."js-flot" or (buildDepError "js-flot"))
          (hsPkgs."js-jquery" or (buildDepError "js-jquery"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          ] ++ (pkgs.lib).optionals (!flags.portable) ((pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix")))) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"))) ++ (pkgs.lib).optionals (flags.cloud) [
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (buildDepError "semigroups"));
        };
      exes = {
        "shake" = {
          depends = ((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."filepattern" or (buildDepError "filepattern"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."heaps" or (buildDepError "heaps"))
            (hsPkgs."js-dgtable" or (buildDepError "js-dgtable"))
            (hsPkgs."js-flot" or (buildDepError "js-flot"))
            (hsPkgs."js-jquery" or (buildDepError "js-jquery"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ] ++ (pkgs.lib).optionals (!flags.portable) ((pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix")))) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"))) ++ (pkgs.lib).optionals (flags.cloud) [
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (buildDepError "semigroups"));
          };
        };
      tests = {
        "shake-test" = {
          depends = ((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."filepattern" or (buildDepError "filepattern"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."heaps" or (buildDepError "heaps"))
            (hsPkgs."js-dgtable" or (buildDepError "js-dgtable"))
            (hsPkgs."js-flot" or (buildDepError "js-flot"))
            (hsPkgs."js-jquery" or (buildDepError "js-jquery"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ] ++ (pkgs.lib).optionals (!flags.portable) ((pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix")))) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"))) ++ (pkgs.lib).optionals (flags.cloud) [
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (buildDepError "semigroups"));
          };
        };
      };
    }