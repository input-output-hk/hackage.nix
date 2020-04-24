{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."byteslice" or ((hsPkgs.pkgs-errors).buildDepError "byteslice"))
          (hsPkgs."bytesmith" or ((hsPkgs.pkgs-errors).buildDepError "bytesmith"))
          (hsPkgs."chronos" or ((hsPkgs.pkgs-errors).buildDepError "chronos"))
          (hsPkgs."ip" or ((hsPkgs.pkgs-errors).buildDepError "ip"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."primitive-addr" or ((hsPkgs.pkgs-errors).buildDepError "primitive-addr"))
          (hsPkgs."run-st" or ((hsPkgs.pkgs-errors).buildDepError "run-st"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pan-os-syslog" or ((hsPkgs.pkgs-errors).buildDepError "pan-os-syslog"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."byteslice" or ((hsPkgs.pkgs-errors).buildDepError "byteslice"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."byteslice" or ((hsPkgs.pkgs-errors).buildDepError "byteslice"))
            (hsPkgs."gauge" or ((hsPkgs.pkgs-errors).buildDepError "gauge"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."pan-os-syslog" or ((hsPkgs.pkgs-errors).buildDepError "pan-os-syslog"))
            ];
          buildable = true;
          };
        };
      };
    }