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
      specVersion = "1.10";
      identifier = {
        name = "smallcheck-lens";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "j@dannynavarro.net";
      author = "Danny Navarro";
      homepage = "https://github.com/jdnavarro/smallcheck-lens";
      url = "";
      synopsis = "SmallCheck lens laws";
      description = "@<https://hackage.haskell.org/package/smallcheck smallcheck>@ properties\nported from\n@<https://hackage.haskell.org/package/lens-properties lens-properties>@\nand @<https://hackage.haskell.org/package/tasty tasty>@ test trees to validate @Lens@es, @Setter@s, @Traversal@s, @Iso@s and @Prism@s.\n\nMost likely, you will only need the \"Test.Tasty.SmallCheck.Lens\"\nmodule, which includes test trees ready to be run.\n\nCheck the\n<https://github.com/jdnavarro/smallcheck-lens/blob/master/tests/tasty.hs tests>\nin this package for examples.";
      buildType = "Simple";
    };
    components = {
      "smallcheck-lens" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.lens)
          (hsPkgs.smallcheck)
          (hsPkgs.smallcheck-series)
          (hsPkgs.tasty)
          (hsPkgs.tasty-smallcheck)
        ];
      };
      tests = {
        "tasty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.tasty)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.smallcheck)
            (hsPkgs.smallcheck-lens)
          ];
        };
      };
    };
  }