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
    flags = {
      use-reflex-optimizer = false;
      use-template-haskell = true;
      debug-trace-events = false;
      fast-weak = false;
      debug-propagation = false;
      debug-cycles = false;
      split-these = true;
      };
    package = {
      specVersion = "1.22";
      identifier = { name = "reflex"; version = "0.6.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ryan.trinkle@gmail.com";
      author = "Ryan Trinkle";
      homepage = "https://reflex-frp.org";
      url = "";
      synopsis = "Higher-order Functional Reactive Programming";
      description = "Reflex is a high-performance, deterministic, higher-order Functional Reactive Programming system";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((([
          (hsPkgs."MemoTrie" or (buildDepError "MemoTrie"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."constraints-extras" or (buildDepError "constraints-extras"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."dependent-map" or (buildDepError "dependent-map"))
          (hsPkgs."exception-transformers" or (buildDepError "exception-transformers"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."patch" or (buildDepError "patch"))
          (hsPkgs."prim-uniq" or (buildDepError "prim-uniq"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."ref-tf" or (buildDepError "ref-tf"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unbounded-delays" or (buildDepError "unbounded-delays"))
          (hsPkgs."witherable" or (buildDepError "witherable"))
          ] ++ (if flags.split-these
          then [
            (hsPkgs."these" or (buildDepError "these"))
            (hsPkgs."semialign" or (buildDepError "semialign"))
            (hsPkgs."monoidal-containers" or (buildDepError "monoidal-containers"))
            ]
          else [
            (hsPkgs."these" or (buildDepError "these"))
            (hsPkgs."monoidal-containers" or (buildDepError "monoidal-containers"))
            ])) ++ (pkgs.lib).optional (flags.debug-trace-events) (hsPkgs."bytestring" or (buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.use-reflex-optimizer) (hsPkgs."ghc" or (buildDepError "ghc"))) ++ (if flags.use-template-haskell
          then [
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."haskell-src-meta" or (buildDepError "haskell-src-meta"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ]
          else [
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            ])) ++ (pkgs.lib).optional (compiler.isGhcjs && true) (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"));
        buildable = true;
        };
      tests = {
        "semantics" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."dependent-map" or (buildDepError "dependent-map"))
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."ref-tf" or (buildDepError "ref-tf"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        "CrossImpl" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dependent-map" or (buildDepError "dependent-map"))
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."ref-tf" or (buildDepError "ref-tf"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            ];
          buildable = true;
          };
        "hlint" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        "EventWriterT" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."dependent-map" or (buildDepError "dependent-map"))
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."these" or (buildDepError "these"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."ref-tf" or (buildDepError "ref-tf"))
            ] ++ (pkgs.lib).optional (flags.split-these) (hsPkgs."these-lens" or (buildDepError "these-lens"));
          buildable = true;
          };
        "DebugCycles" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."dependent-map" or (buildDepError "dependent-map"))
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."these" or (buildDepError "these"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."ref-tf" or (buildDepError "ref-tf"))
            (hsPkgs."witherable" or (buildDepError "witherable"))
            (hsPkgs."proctest" or (buildDepError "proctest"))
            ] ++ (pkgs.lib).optionals (flags.split-these) [
            (hsPkgs."these-lens" or (buildDepError "these-lens"))
            (hsPkgs."semialign" or (buildDepError "semialign"))
            ];
          buildable = true;
          };
        "RequesterT" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."constraints-extras" or (buildDepError "constraints-extras"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."dependent-map" or (buildDepError "dependent-map"))
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."ref-tf" or (buildDepError "ref-tf"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."these" or (buildDepError "these"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ] ++ (pkgs.lib).optional (flags.split-these) (hsPkgs."these-lens" or (buildDepError "these-lens"));
          buildable = true;
          };
        "Adjustable" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."ref-tf" or (buildDepError "ref-tf"))
            (hsPkgs."these" or (buildDepError "these"))
            ];
          buildable = true;
          };
        "QueryT" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dependent-map" or (buildDepError "dependent-map"))
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monoidal-containers" or (buildDepError "monoidal-containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."patch" or (buildDepError "patch"))
            (hsPkgs."ref-tf" or (buildDepError "ref-tf"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."these" or (buildDepError "these"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ] ++ (pkgs.lib).optionals (flags.split-these) [
            (hsPkgs."semialign" or (buildDepError "semialign"))
            (hsPkgs."these-lens" or (buildDepError "these-lens"))
            ];
          buildable = true;
          };
        "GC-Semantics" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."dependent-map" or (buildDepError "dependent-map"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."patch" or (buildDepError "patch"))
            (hsPkgs."these" or (buildDepError "these"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."ref-tf" or (buildDepError "ref-tf"))
            ] ++ (pkgs.lib).optional (flags.split-these) (hsPkgs."semialign" or (buildDepError "semialign"));
          buildable = true;
          };
        "rootCleanup" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."ref-tf" or (buildDepError "ref-tf"))
            (hsPkgs."these" or (buildDepError "these"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "spider-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."dependent-map" or (buildDepError "dependent-map"))
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."ref-tf" or (buildDepError "ref-tf"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        "saulzar-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."dependent-map" or (buildDepError "dependent-map"))
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."loch-th" or (buildDepError "loch-th"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."ref-tf" or (buildDepError "ref-tf"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }