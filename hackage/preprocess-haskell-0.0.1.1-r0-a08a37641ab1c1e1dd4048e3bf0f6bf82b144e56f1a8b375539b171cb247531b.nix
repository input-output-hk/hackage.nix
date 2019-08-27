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
      identifier = { name = "preprocess-haskell"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ben@benjaminsummers.net";
      author = "Benjamin Summers";
      homepage = "";
      url = "";
      synopsis = "Preprocess Haskell Repositories.";
      description = "Do all of the dirty work required to get a Haskell repo\nready for straightforward static-analysis.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."turtle" or (buildDepError "turtle"))
          (hsPkgs."basic-prelude" or (buildDepError "basic-prelude"))
          (hsPkgs."cpphs" or (buildDepError "cpphs"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."here" or (buildDepError "here"))
          ];
        };
      };
    }