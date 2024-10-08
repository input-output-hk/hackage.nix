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
      specVersion = "1.10";
      identifier = { name = "binary-typed"; version = "0.2.0.0"; };
      license = "BSD-2-Clause";
      copyright = "David Luposchainsky";
      maintainer = "dluposchainsky on googles email service";
      author = "David Luposchainsky";
      homepage = "https://github.com/quchen/binary-typed";
      url = "";
      synopsis = "Type-safe binary serialization";
      description = "`Binary` serialization tagged with type information, allowing for\ntypechecking and useful error messages at the receiving site.\n\nThis package serves the same purpose as tagged-binary, with a couple of\nkey differences:\n\n* Support of different kinds of serialized type annotations, each with\nspecific strengths and weaknesses.\n\n* Error messages can provide details on type errors at the cost of\nlonger message lengths to include the necessary information.\n\n* Serialization computationally almost as efficient as \"Data.Binary\" when\nprecaching type representations; decoding however is slower.\nThese values obviously depend a lot on the involved data and its type;\nan example benchmark is shown in the picture below.\n\n* No depencency on @Internal@ modules of other libraries, and a very small\ndependency footprint in general.\n\nFor information about usage, see the \"Data.Binary.Typed.Tutorial\" module.\n\nPerformance-wise, here is a value @Right (Left \\<100 chars lipsum\\>)@ of\ntype @Either (Char, Int) (Either String (Maybe Integer))@ benchmarked\nusing the @Hashed64@ type representation:\n\n<<http://i.imgur.com/JzhYqGZ.png>>\n\n<doc/bench-overview.png (local copy)>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."murmur-hash" or (errorHandler.buildDepError "murmur-hash"))
        ];
        buildable = true;
      };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."binary-typed" or (errorHandler.buildDepError "binary-typed"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
        "message-length" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."binary-typed" or (errorHandler.buildDepError "binary-typed"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "criterion" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."binary-typed" or (errorHandler.buildDepError "binary-typed"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
        "criterion-overview" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."binary-typed" or (errorHandler.buildDepError "binary-typed"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }