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
      specVersion = "1.8";
      identifier = { name = "nomyx-core"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "corentin.dupont@gmail.com";
      author = "Corentin Dupont";
      homepage = "http://www.nomyx.net";
      url = "";
      synopsis = "A Nomic game in haskell";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."nomyx-language" or (buildDepError "nomyx-language"))
          (hsPkgs."nomyx-library" or (buildDepError "nomyx-library"))
          (hsPkgs."imprevu" or (buildDepError "imprevu"))
          (hsPkgs."DebugTraceHelpers" or (buildDepError "DebugTraceHelpers"))
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          (hsPkgs."acid-state" or (buildDepError "acid-state"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hint" or (buildDepError "hint"))
          (hsPkgs."hscolour" or (buildDepError "hscolour"))
          (hsPkgs."ixset" or (buildDepError "ixset"))
          (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."safecopy" or (buildDepError "safecopy"))
          (hsPkgs."shortcut" or (buildDepError "shortcut"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."tar" or (buildDepError "tar"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."NoTrace" or (buildDepError "NoTrace"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."hint-server" or (buildDepError "hint-server"))
          (hsPkgs."HaskellNet" or (buildDepError "HaskellNet"))
          (hsPkgs."HaskellNet-SSL" or (buildDepError "HaskellNet-SSL"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"));
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."nomyx-core" or (buildDepError "nomyx-core"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            ];
          };
        };
      };
    }