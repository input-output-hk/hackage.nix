{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "pan-os-syslog"; version = "0.2.0.0"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
          (hsPkgs."bytesmith" or (errorHandler.buildDepError "bytesmith"))
          (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
          (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."primitive-addr" or (errorHandler.buildDepError "primitive-addr"))
          (hsPkgs."run-st" or (errorHandler.buildDepError "run-st"))
          (hsPkgs."uuid-bytes" or (errorHandler.buildDepError "uuid-bytes"))
          (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
        ];
        buildable = true;
      };
      exes = {
        "pan-os-syslog-to-avro" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pan-os-syslog" or (errorHandler.buildDepError "pan-os-syslog"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."bytebuild" or (errorHandler.buildDepError "bytebuild"))
            (hsPkgs."json-syntax" or (errorHandler.buildDepError "json-syntax"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."contiguous" or (errorHandler.buildDepError "contiguous"))
            (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."byte-order" or (errorHandler.buildDepError "byte-order"))
            (hsPkgs."run-st" or (errorHandler.buildDepError "run-st"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pan-os-syslog" or (errorHandler.buildDepError "pan-os-syslog"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."pan-os-syslog" or (errorHandler.buildDepError "pan-os-syslog"))
          ];
          buildable = true;
        };
      };
    };
  }