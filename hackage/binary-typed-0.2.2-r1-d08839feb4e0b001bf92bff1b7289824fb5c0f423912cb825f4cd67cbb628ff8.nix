{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "binary-typed";
        version = "0.2.2";
      };
      license = "BSD-2-Clause";
      copyright = "David Luposchainsky";
      maintainer = "dluposchainsky on googles email service";
      author = "David Luposchainsky";
      homepage = "https://github.com/quchen/binary-typed";
      url = "";
      synopsis = "Type-safe binary serialization";
      description = "`Binary` serialization tagged with type information, allowing for\ntypechecking and useful error messages at the receiving site.\n\nThis package serves the same purpose as tagged-binary, with a couple of\nkey differences:\n\n* Support of different kinds of serialized type annotations, each with\nspecific strengths and weaknesses.\n\n* Error messages can provide details on type errors at the cost of\nlonger message lengths to include the necessary information.\n\n* Serialization computationally almost as efficient as \"Data.Binary\" when\nsharing type representations; decoding however is slower.\nThese values obviously depend a lot on the involved data and its type;\nan example benchmark is shown in the picture below.\n\n* No depencency on @Internal@ modules of other libraries, and a very small\ndependency footprint in general.\n\nFor information about usage, see the \"Data.Binary.Typed.Tutorial\" module.\n\nPerformance-wise, here is a value @Right (Left \\<100 chars lipsum\\>)@ of\ntype @Either (Char, Int) (Either String (Maybe Integer))@ benchmarked\nusing the @Hashed64@ type representation:\n\n<<http://i.imgur.com/Jsiaokx.png>>\n\n<doc/bench-overview.png (local copy)>";
      buildType = "Simple";
    };
    components = {
      "binary-typed" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.murmur-hash)
        ];
      };
      tests = {
        "tasty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.binary-typed)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
        "message-length" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.binary-typed)
            (hsPkgs.bytestring)
          ];
        };
      };
      benchmarks = {
        "criterion" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.binary-typed)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
          ];
        };
        "criterion-overview" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.binary-typed)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }