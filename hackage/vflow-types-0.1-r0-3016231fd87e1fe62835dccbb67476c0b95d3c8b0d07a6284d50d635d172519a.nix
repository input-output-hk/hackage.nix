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
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          (hsPkgs."json-alt" or (errorHandler.buildDepError "json-alt"))
          (hsPkgs."json-autotype" or (errorHandler.buildDepError "json-autotype"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vflow-types" or (errorHandler.buildDepError "vflow-types"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
          ];
          buildable = true;
        };
        "laws" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vflow-types" or (errorHandler.buildDepError "vflow-types"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."json-alt" or (errorHandler.buildDepError "json-alt"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          ];
          buildable = true;
        };
      };
    };
  }