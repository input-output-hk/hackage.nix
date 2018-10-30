{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "fast-builder";
        version = "0.0.0.3";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "aljee@hyper.cx";
      author = "Takano Akio";
      homepage = "http://github.com/takano-akio/fast-builder";
      url = "";
      synopsis = "Fast ByteString Builder";
      description = "An efficient implementation of ByteString builder. It should be faster than\nthe standard implementation in most cases.\n\nIn many benchmarks, the performance improvement is 2x-10x.";
      buildType = "Simple";
    };
    components = {
      "library" = {
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
            (hsPkgs.template-haskell)
            (hsPkgs.true-name)
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
        "map" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fast-builder)
            (hsPkgs.criterion)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
          ];
        };
      };
    };
  }