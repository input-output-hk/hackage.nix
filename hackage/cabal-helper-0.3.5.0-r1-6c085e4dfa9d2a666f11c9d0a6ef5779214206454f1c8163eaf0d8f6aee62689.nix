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
      identifier = { name = "cabal-helper"; version = "0.3.5.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "dxld@darkboxed.org";
      author = "Daniel Gröber <dxld@darkboxed.org>";
      homepage = "";
      url = "";
      synopsis = "Simple interface to Cabal's configuration state used by ghc-mod";
      description = "@cabal-helper@ provides a library which wraps the internal use of executables\nto lift the restrictions imposed by linking against versions of GHC before\n@7.10@.\n\n@cabal-helper@ uses a wrapper executable to compile the actual cabal-helper\nexecutable at runtime while linking against an arbitrary version of\nCabal. This runtime-compiled helper executable is then used to extract\nvarious bits and peices from Cabal\\'s on disk state (dist/setup-config)\nwritten by it's configure command.\n\nIn addition to this the wrapper executable also supports installing any\nversion of Cabal from hackage in case it cannot be found in any available\npackage database. The wrapper installs these instances of the Cabal library\ninto a private package database so as to not interfere with the user's\npackages.\n\nFurthermore the wrapper supports one special case namely reading a state\nfile for Cabal itself. This is needed as Cabal compiles it's Setup.hs using\nitself and not using any version of Cabal installed in any package database.\n\n@cabal-helper@ can compile with @Cabal >= 1.14@ but requires @Cabal >= 1.16@\nat runtime.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ];
        };
      exes = {
        "cabal-helper-wrapper" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cabal-helper" or (buildDepError "cabal-helper"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ];
          };
        };
      };
    }