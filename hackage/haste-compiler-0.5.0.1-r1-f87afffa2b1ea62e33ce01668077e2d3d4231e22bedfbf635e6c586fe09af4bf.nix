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
    flags = { portable = false; static = false; only-library = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "haste-compiler"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad <anton@ekblad.cc>";
      homepage = "http://haste-lang.org/";
      url = "";
      synopsis = "Haskell To ECMAScript compiler";
      description = "This package provides a featureful compiler from Haskell to\nJavaScript based on GHC. It generates small, fast code, makes\nuse of standard Haskell libraries, integrates with Cabal,\nsupports most GHC extensions and works on Windows, Linux and\nOSX.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."monads-tf" or (buildDepError "monads-tf"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."data-binary-ieee754" or (buildDepError "data-binary-ieee754"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."shellmate" or (buildDepError "shellmate"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          ];
        buildable = true;
        };
      exes = {
        "haste-boot" = {
          depends = [
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."bzlib" or (buildDepError "bzlib"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."shellmate" or (buildDepError "shellmate"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = if flags.only-library then false else true;
          };
        "hastec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."system-fileio" or (buildDepError "system-fileio"))
            (hsPkgs."shellmate" or (buildDepError "shellmate"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."ghc-simple" or (buildDepError "ghc-simple"))
            ];
          buildable = if flags.only-library then false else true;
          };
        "haste-cabal" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."shellmate" or (buildDepError "shellmate"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = if flags.only-library then false else true;
          };
        "haste-pkg" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bin-package-db" or (buildDepError "bin-package-db"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."shellmate" or (buildDepError "shellmate"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            ] ++ (pkgs.lib).optionals (!system.isWindows) [
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."terminfo" or (buildDepError "terminfo"))
            ];
          buildable = if flags.only-library then false else true;
          };
        "haste-install-his" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."shellmate" or (buildDepError "shellmate"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = if flags.only-library then false else true;
          };
        "haste-copy-pkg" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."shellmate" or (buildDepError "shellmate"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = if flags.only-library then false else true;
          };
        "haste-cat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."shellmate" or (buildDepError "shellmate"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          buildable = if flags.only-library then false else true;
          };
        };
      };
    }