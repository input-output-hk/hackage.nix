{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hedis-pile";
        version = "0.6.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexander Dorofeev <aka.spin@gmail.com>";
      author = "Alexander Dorofeev <aka.spin@gmail.com>";
      homepage = "https://github.com/akaspin/hedis-pile";
      url = "";
      synopsis = "Caching mandatory data with Redis";
      description = "Solution for caching mandatory data with Redis.";
      buildType = "Simple";
    };
    components = {
      "hedis-pile" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.hedis)
          (hsPkgs.hedis-tags)
          (hsPkgs.string-conversions)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.hedis-pile)
            (hsPkgs.bytestring)
            (hsPkgs.hedis)
            (hsPkgs.binary)
            (hsPkgs.lifted-base)
            (hsPkgs.string-conversions)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }