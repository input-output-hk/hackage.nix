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
      identifier = { name = "bake"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2014-2015";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/bake#readme";
      url = "";
      synopsis = "Continuous integration system";
      description = "Bake is a continuous integration server, designed for large, productive, semi-trusted teams.\n\n* /Large teams/ where there are at least several contributors working full-time on a single code base.\n\n* /Productive teams/ which are regularly pushing code, many times a day.\n\n* /Semi-trusted teams/ where code does not go through manual code review, but code does need to pass a test suite and perhaps some static analysis. People are assumed not to be malicious, but are fallible.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."shake" or (buildDepError "shake"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."sqlite-simple" or (buildDepError "sqlite-simple"))
          (hsPkgs."direct-sqlite" or (buildDepError "direct-sqlite"))
          (hsPkgs."disk-free-space" or (buildDepError "disk-free-space"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."smtp-mail" or (buildDepError "smtp-mail"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."warp" or (buildDepError "warp"))
          ];
        };
      exes = {
        "bake-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."shake" or (buildDepError "shake"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."smtp-mail" or (buildDepError "smtp-mail"))
            (hsPkgs."disk-free-space" or (buildDepError "disk-free-space"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."sqlite-simple" or (buildDepError "sqlite-simple"))
            (hsPkgs."direct-sqlite" or (buildDepError "direct-sqlite"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        };
      };
    }