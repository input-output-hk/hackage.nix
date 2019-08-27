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
      specVersion = "1.24";
      identifier = { name = "liblawless"; version = "0.13.1"; };
      license = "GPL-3.0-only";
      copyright = "© 2016 Evan Cofsky";
      maintainer = "evan@theunixman.com";
      author = "Evan Cofsky";
      homepage = "";
      url = "";
      synopsis = "Prelude based on protolude for GHC 8 and beyond.";
      description = "A Prelude relpacement for GHC 8 with a focus on building\napplications with Lenses, Machines, and Applicatives.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
          (hsPkgs."concurrent-machines" or (buildDepError "concurrent-machines"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."machines" or (buildDepError "machines"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."containers-unicode-symbols" or (buildDepError "containers-unicode-symbols"))
          (hsPkgs."data-textual" or (buildDepError "data-textual"))
          (hsPkgs."parsers" or (buildDepError "parsers"))
          (hsPkgs."text-printer" or (buildDepError "text-printer"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hjsonschema" or (buildDepError "hjsonschema"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."path" or (buildDepError "path"))
          (hsPkgs."path-io" or (buildDepError "path-io"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."protolude" or (buildDepError "protolude"))
          (hsPkgs."stm-containers" or (buildDepError "stm-containers"))
          (hsPkgs."text-icu" or (buildDepError "text-icu"))
          (hsPkgs."text-icu-normalized" or (buildDepError "text-icu-normalized"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."zippers" or (buildDepError "zippers"))
          ];
        };
      tests = {
        "test-liblawless" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."liblawless" or (buildDepError "liblawless"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or (buildDepError "test-framework-th"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }