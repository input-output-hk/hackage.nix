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
      identifier = { name = "pan-os-syslog"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Layer 3 Communications";
      maintainer = "amartin@layer3com.com";
      author = "Andrew Martin";
      homepage = "https://github.com/layer-3-communications/palo-alto-syslog";
      url = "";
      synopsis = "Parse syslog traffic from PAN-OS";
      description = "Parse syslog traffic from PAN-OS. The data types in this library are\noptimized for decoding logs, not for creating them. On consumer-grade\nhardware, the benchmark suite demonstrates that 500-byte traffic logs are\nparsed in under one microsecond. Contributions are welcome. This project's\ngoals are:\n\n* Support as many PAN-OS syslog types as possible: traffic,\nthreat, hip-match, etc.\n\n* Support as many versions of PAN-OS as possible: 8.0, 8.1, 9.0, etc.\n\n* High performance. This library strives to avoid unneeded allocations.\nSome allocations cannot be avoided. For example, it is necessary to\nallocate space for the results.\n\n* Do a minimum amount of useful work on each field. The reasoning is\nthat users will typically discard most of the fields, so there is\nno point wasting clock cycles doing unneeded work. Its hard to define\nwhat this is precisely. Roughly, the rule this library follows is that\nintegral fields are parsed as @Word64@, and non-integral fields are\n@Bytes@. This library does not attempt to validate hostnames, URIs, etc.\n\nA good way to think about this library is that it is kind of like\na tokenizer. It is the first step when parsing PAN-OS logs into\nsome application-specific data type. There almost certainly needs\nto be a second step to decodes fields that are actually of interest\nto an application. This second step may involve validating URIs,\nsplitting the user domain and user name, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."byteslice" or (buildDepError "byteslice"))
          (hsPkgs."bytesmith" or (buildDepError "bytesmith"))
          (hsPkgs."chronos" or (buildDepError "chronos"))
          (hsPkgs."ip" or (buildDepError "ip"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."primitive-addr" or (buildDepError "primitive-addr"))
          (hsPkgs."run-st" or (buildDepError "run-st"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pan-os-syslog" or (buildDepError "pan-os-syslog"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."byteslice" or (buildDepError "byteslice"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."byteslice" or (buildDepError "byteslice"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."pan-os-syslog" or (buildDepError "pan-os-syslog"))
            ];
          buildable = true;
          };
        };
      };
    }