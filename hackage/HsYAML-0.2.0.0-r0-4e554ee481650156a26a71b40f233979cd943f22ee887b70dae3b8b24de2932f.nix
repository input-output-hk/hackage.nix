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
    flags = { exe = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "HsYAML"; version = "0.2.0.0"; };
      license = "GPL-2.0-only";
      copyright = "2015-2018 Herbert Valerio Riedel\n, 2007-2008 Oren Ben-Kiki";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/HsYAML";
      url = "";
      synopsis = "Pure Haskell YAML 1.2 processor";
      description = "@HsYAML@ is a [YAML 1.2](http://yaml.org/spec/1.2/spec.html) processor, i.e. a library for parsing and serializing YAML documents.\n\nFeatures of @HsYAML@ include:\n\n* Pure Haskell implementation with small dependency footprint and emphasis on strict compliance with the [YAML 1.2 specification](http://yaml.org/spec/1.2/spec.html).\n* Direct decoding to native Haskell types via (@aeson@-inspired) typeclass-based API (see \"Data.YAML\").\n* Allows round-tripping while preserving ordering, anchors, and comments at Event-level.\n* Support for constructing custom YAML node graph representation (including support for cyclic YAML data structures).\n* Support for the standard (untyped) /Failsafe/, (strict) /JSON/, and (flexible) /Core/ \\\"schemas\\\" providing implicit typing rules as defined in the YAML 1.2 specification (including support for user-defined custom schemas; see \"Data.YAML.Schema\").\n* Support for emitting YAML using /Failsafe/, (strict) /JSON/, and (flexible) /Core/ \\\"schemas\\\" (including support for user-defined custom encoding schemas; see \"Data.YAML.Schema\").\n* Event-based API resembling LibYAML's Event-based API (see \"Data.YAML.Event\").\n* Low-level API access to lexical token-based scanner (see \"Data.YAML.Token\").\n\nSee also the <//hackage.haskell.org/package/HsYAML-aeson HsYAML-aeson> package which allows to decode and encode YAML by leveraging @aeson@'s 'FromJSON' and 'ToJSON' instances.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."fail" or (buildDepError "fail"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."nats" or (buildDepError "nats"));
        };
      exes = {
        "yaml-test" = {
          depends = (pkgs.lib).optionals (flags.exe) [
            (hsPkgs."HsYAML" or (buildDepError "HsYAML"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."microaeson" or (buildDepError "microaeson"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."HsYAML" or (buildDepError "HsYAML"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ];
          };
        };
      };
    }