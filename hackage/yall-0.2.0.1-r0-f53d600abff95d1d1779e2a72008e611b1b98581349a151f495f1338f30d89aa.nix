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
      specVersion = "1.6";
      identifier = { name = "yall"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "http://brandon.si/code/yall/";
      url = "";
      synopsis = "Lenses with a southern twang";
      description = "Why yet /another/ lens library?\nFirst, none of the existing libraries for Lenses were\nadequate for my needs (specifically for my use of lenses\nin \"pez\"). And anyway, why not try to create something\nnovel and better?\n\nDistinguishing features:\n\n- Lenses are parameterized over two Monads (by convention\n@m@ and @w@), and look like @a -> m (b -> w a, b)@. this\nlets us define lenses for sum types, that perform\nvalidation, that do IO (e.g. persist data to disk),\netc., etc.\n\n- a module \"Data.Yall.Iso\" that complements @Lens@ powerfully\n\n- a rich set of category-level class instances (for now\nfrom \"categories\") for 'Lens' and 'Iso'. These along\nwith the pre-defined primitive lenses and combinators\ngive an interface comparable to Arrow\n\nYou should import either \"Data.Yall\" or \"Data.Yall.Lens\",\nand optionally \"Data.Yall.Iso\". \"Data.Yall\" is a simplified,\nbut mostly-compatible, version of a subset of \"Data.Yall.Lens\".\n\n/TODOs/:\n\n- a module providing template haskell deriving of Lenses\n\n- pre-define lenses for prelude types, State\n\n/CHANGES/:\n\n- remove 'setEmpty' variants only useful on lenses better expressed in Iso\n\n- create a class for lens operations, supporting...\n\n- use newtype wrappers for different monadic lifting schemes\n\n- better ordering for set, allowing let-floating for partial application";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."categories" or (errorHandler.buildDepError "categories"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }