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
    flags = { pedantic = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "list-singleton"; version = "2.0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Easily and clearly create lists with only one element in them.";
      description = "Warning:\nThis package is not maintained anymore.\nAs of @base-4.15.0.0@, both [@Data.List.singleton@](https://hackage.haskell.org/package/base-4.15.0.0/docs/Data-List.html#v:singleton)\nand [@Data.List.NonEmpty.singleton@](https://hackage.haskell.org/package/base-4.15.0.0/docs/Data-List-NonEmpty.html#v:singleton) are available.\n\nThe @list-singleton@ package allows you to easily and clearly create lists\nwith only one element in them, which are typically called \"singleton lists\"\nor simply \"singletons\". (Not to be confused with\nthe @[singletons](https://hackage.haskell.org/package/singletons)@ package!)\n\nWith any luck this library will be included in future versions of\nthe @[base](https://hackage.haskell.org/package/base)@ package. See this\nmailing list thread for an extended discussion:\n<https://mail.haskell.org/pipermail/libraries/2019-August/029801.html>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }