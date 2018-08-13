{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10.0";
      identifier = {
        name = "LinguisticsTypes";
        version = "0.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2015";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2015";
      homepage = "https://github.com/choener/LinguisticsTypes";
      url = "";
      synopsis = "Collection of types for natural language";
      description = "Types used for natural language applications. Includes an\ninternalized text type, @BTI@ which represents internalized\n@Text@ values with @Int@s.";
      buildType = "Simple";
    };
    components = {
      "LinguisticsTypes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bimaps)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cereal-text)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.intern)
          (hsPkgs.log-domain)
          (hsPkgs.QuickCheck)
          (hsPkgs.stringable)
          (hsPkgs.text)
          (hsPkgs.text-binary)
          (hsPkgs.vector-th-unbox)
        ];
      };
      tests = {
        "properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.binary)
            (hsPkgs.cereal)
            (hsPkgs.LinguisticsTypes)
            (hsPkgs.QuickCheck)
            (hsPkgs.stringable)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
          ];
        };
      };
    };
  }