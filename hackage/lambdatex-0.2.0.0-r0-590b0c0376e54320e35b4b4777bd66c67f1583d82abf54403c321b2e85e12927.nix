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
        name = "lambdatex";
        version = "0.2.0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "2015 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "http://github.com/NorfairKing/lambdatex";
      url = "";
      synopsis = "Type-Safe LaTeX EDSL";
      description = "ΛTeX, pronounced 'LambdaTeX' is a Haskell EDSL that adds type-safety to LaTeX.\nΛTeX-generated LaTeX code should compile without errors.\nTODO(kerckhove) big fancy example";
      buildType = "Simple";
    };
    components = {
      "lambdatex" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HaTeX)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.directory)
          (hsPkgs.async)
          (hsPkgs.filepath)
        ];
      };
      tests = {
        "lambdatex-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lambdatex)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.quickcheck-text)
          ];
        };
      };
    };
  }