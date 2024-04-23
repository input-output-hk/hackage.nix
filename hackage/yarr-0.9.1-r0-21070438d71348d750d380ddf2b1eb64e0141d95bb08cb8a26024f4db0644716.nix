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
      specVersion = "1.8";
      identifier = { name = "yarr"; version = "0.9.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Roman Leventov <leventov@ya.ru>";
      author = "Roman Leventov";
      homepage = "";
      url = "";
      synopsis = "Yet another array library";
      description = "Yarr is a new blazing fast dataflow framework (array library),\nmainly intented to process @Storable@s (including all \\\"primitive\\\" numeric types)\nand @fixed-vector@s of them, for example coordinates,\ncolor components, complex numbers.\n\nYarr framework is inspired by @repa@ library and inherits its features,\nincluding shape-polymorphism and auto-parallelism.\nAdditionaly, the framework is polymorphic over type and arity\nof fixed-size vectors and supports neat flow operations over them.\nFor example, you can convert colored image to greyscale like this:\n\n> let greyImage = zipElems (\\r g b -> 0.21 * r + 0.71 * g + 0.07 * b) image\n\nThe library is considerably faster than @repa@.\nCanny edge detector on Yarr is 40% (on 5 threads)\nand 55% (in sequential mode) faster then on @repa@.\n\nShortcoming by design: lack of pure indexing interface.\n\n/Work ahead:/\n\n* Safe fold wrappers\n\n* Unresolved issues with parameterized unrolling in slice-wise loading\n\nTo start with, read documentation in the root module: \"Data.Yarr\".\n\n[@Yarr!@]";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."fixed-vector" or (errorHandler.buildDepError "fixed-vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."missing-foreign" or (errorHandler.buildDepError "missing-foreign"))
        ];
        buildable = true;
      };
    };
  }