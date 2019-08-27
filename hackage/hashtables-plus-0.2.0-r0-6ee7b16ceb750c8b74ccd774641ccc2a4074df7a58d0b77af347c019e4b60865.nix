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
      identifier = { name = "hashtables-plus"; version = "0.2.0"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hashtables-plus";
      url = "";
      synopsis = "Extensions for a \"hashtables\" library";
      description = "A dome API over the \\\"hashtables\\\" library,\nwhich provides 'null' and 'size' functions of /O(1)/ complexity and\nadvanced data structures: multimap, set, \"StableName\"-based structures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hashtables" or (buildDepError "hashtables"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."loch-th" or (buildDepError "loch-th"))
          (hsPkgs."placeholders" or (buildDepError "placeholders"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."hashtables-plus" or (buildDepError "hashtables-plus"))
            (hsPkgs."criterion-plus" or (buildDepError "criterion-plus"))
            (hsPkgs."hashtables" or (buildDepError "hashtables"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."th-printf" or (buildDepError "th-printf"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."loch-th" or (buildDepError "loch-th"))
            (hsPkgs."placeholders" or (buildDepError "placeholders"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }