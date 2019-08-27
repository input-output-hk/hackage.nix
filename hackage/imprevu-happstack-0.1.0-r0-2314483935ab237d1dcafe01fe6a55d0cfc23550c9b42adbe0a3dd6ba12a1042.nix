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
      identifier = { name = "imprevu-happstack"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Corentin Dupont";
      maintainer = "Corentin Dupont";
      author = "Corentin Dupont";
      homepage = "http://www.nomyx.net";
      url = "";
      synopsis = "Imprevu support for Happstack";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."DebugTraceHelpers" or (buildDepError "DebugTraceHelpers"))
          (hsPkgs."imprevu" or (buildDepError "imprevu"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
          (hsPkgs."reform" or (buildDepError "reform"))
          (hsPkgs."reform-blaze" or (buildDepError "reform-blaze"))
          (hsPkgs."reform-happstack" or (buildDepError "reform-happstack"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."monad-extras" or (buildDepError "monad-extras"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."NoTrace" or (buildDepError "NoTrace"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."imprevu-happstack" or (buildDepError "imprevu-happstack"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            ];
          };
        };
      };
    }