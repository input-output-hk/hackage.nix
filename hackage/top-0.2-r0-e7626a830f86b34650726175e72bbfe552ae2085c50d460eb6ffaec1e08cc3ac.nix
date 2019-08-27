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
      identifier = { name = "top"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Pasqualino `Titto` Assini";
      maintainer = "tittoassini@gmail.com";
      author = "Pasqualino `Titto` Assini";
      homepage = "http://github.com/tittoassini/top";
      url = "";
      synopsis = "Top (typed oriented protocol) API";
      description = "See the <http://github.com/tittoassini/top online tutorial>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."flat" or (buildDepError "flat"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."zm" or (buildDepError "zm"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."ListLike" or (buildDepError "ListLike"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."th-lift" or (buildDepError "th-lift"))) ++ (if compiler.isGhcjs && true
          then [ (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base")) ]
          else [
            (hsPkgs."websockets" or (buildDepError "websockets"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ]);
        };
      tests = {
        "top-test-repo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."top" or (buildDepError "top"))
            (hsPkgs."zm" or (buildDepError "zm"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        "top-doctest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            ];
          };
        };
      };
    }