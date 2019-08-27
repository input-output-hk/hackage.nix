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
      specVersion = "2.2";
      identifier = { name = "vflow-types"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2019 chessai";
      maintainer = "chessai <chessai1996@gmail.com>";
      author = "chessai";
      homepage = "https://github.com/chessai/vflow-types";
      url = "";
      synopsis = "types for ingesting vflow data with aeson";
      description = "`vflow-types` provides types suitable for ingesting vflow data with aeson.\n\nVerizon Digital's <https://github.com/VerizonDigital/vflow vflow> is a network flow collector. Features:\n\n* IPFIX RFC7011 collector\n\n* sFlow v5 raw header / counters collector\n\n* Netflow v5 collector\n\n* Netflow v9 collector\n\n* Decoding sFlow raw header L2/L3/L4\n\n* Producer to Apache Kafka, NSQ, NATS\n\n* Replicate IPFIX to 3rd party collector\n\n* Support for IPv4 and IPv6\n\n* Monitoring with InfluxDB and OpenTSDB backend\n\n* Easy integration with JUNOS\n\nNote that this is not an official Verizon Digital product.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ip" or (buildDepError "ip"))
          (hsPkgs."json-alt" or (buildDepError "json-alt"))
          (hsPkgs."json-autotype" or (buildDepError "json-autotype"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vflow-types" or (buildDepError "vflow-types"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."neat-interpolation" or (buildDepError "neat-interpolation"))
            ];
          };
        "laws" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vflow-types" or (buildDepError "vflow-types"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (buildDepError "quickcheck-classes"))
            (hsPkgs."json-alt" or (buildDepError "json-alt"))
            (hsPkgs."ip" or (buildDepError "ip"))
            ];
          };
        };
      };
    }