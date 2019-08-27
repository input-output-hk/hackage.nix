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
    flags = { build-tests = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "module-management"; version = "0.16.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox";
      homepage = "http://src.seereason.com/module-management";
      url = "";
      synopsis = "Clean up module imports, split and merge modules";
      description = "Clean up module imports, split and merge modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."applicative-extras" or (buildDepError "applicative-extras"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."set-extra" or (buildDepError "set-extra"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."system-fileio" or (buildDepError "system-fileio"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          ];
        };
      exes = {
        "hmm" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."module-management" or (buildDepError "module-management"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."set-extra" or (buildDepError "set-extra"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."lens" or (buildDepError "lens"))
            ];
          };
        "tests" = {
          depends = (pkgs.lib).optionals (flags.build-tests) [
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."debian" or (buildDepError "debian"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."Extra" or (buildDepError "Extra"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."module-management" or (buildDepError "module-management"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."process-progress" or (buildDepError "process-progress"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."set-extra" or (buildDepError "set-extra"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."system-fileio" or (buildDepError "system-fileio"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            ];
          };
        };
      };
    }