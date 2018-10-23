{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "product-profunctors";
        version = "0.10.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013, Karamaan Group LLC; 2014-2018 Purely Agile Limited";
      maintainer = "Purely Agile";
      author = "Purely Agile";
      homepage = "https://github.com/tomjaguarpaw/product-profunctors";
      url = "";
      synopsis = "product-profunctors";
      description = "Product profunctors";
      buildType = "Simple";
    };
    components = {
      "product-profunctors" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.profunctors)
          (hsPkgs.bifunctors)
          (hsPkgs.contravariant)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") (hsPkgs.transformers);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.profunctors)
            (hsPkgs.product-profunctors)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.product-profunctors)
          ];
        };
      };
    };
  }