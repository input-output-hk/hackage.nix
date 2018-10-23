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
        name = "fast-builder";
        version = "0.0.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "aljee@hyper.cx";
      author = "Takano Akio";
      homepage = "http://github.com/takano-akio/fast-builder";
      url = "";
      synopsis = "Fast ByteString Builder";
      description = "An efficient implementation of ByteString builder. It should be faster than\nthe standard implementation in most cases.";
      buildType = "Simple";
    };
    components = {
      "fast-builder" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "prop" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fast-builder)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.stm)
            (hsPkgs.process)
          ];
        };
      };
      benchmarks = {
        "aeson" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fast-builder)
            (hsPkgs.aeson)
            (hsPkgs.criterion)
            (hsPkgs.bytestring)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.deepseq)
            (hsPkgs.unordered-containers)
            (hsPkgs.ghc-prim)
            (hsPkgs.true-name)
            (hsPkgs.template-haskell)
          ];
        };
        "vector" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fast-builder)
            (hsPkgs.criterion)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.deepseq)
          ];
        };
      };
    };
  }