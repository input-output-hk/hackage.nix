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
        name = "tsne";
        version = "1.0.0.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "2017 Rob Agar";
      maintainer = "robagar@fastmail.net";
      author = "Rob Agar";
      homepage = "https://bitbucket.org/robagar/haskell-tsne";
      url = "";
      synopsis = "t-SNE";
      description = "Pure Haskell implementation of the t-SNE dimension reduction algorithm.";
      buildType = "Simple";
    };
    components = {
      "tsne" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.normaldistribution)
          (hsPkgs.pipes)
        ];
      };
      exes = {
        "haskell_tsne_example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.pipes)
            (hsPkgs.tsne)
          ];
        };
      };
      tests = {
        "tSNE-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.data-default)
            (hsPkgs.tsne)
          ];
        };
      };
    };
  }