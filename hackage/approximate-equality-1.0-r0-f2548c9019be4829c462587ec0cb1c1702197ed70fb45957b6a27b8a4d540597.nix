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
      specVersion = "1.2";
      identifier = { name = "approximate-equality"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Crosswhite <gcross@phys.washington.edu>";
      author = "Gregory Crosswhite";
      homepage = "http://github.com/gcross/approximate-equality";
      url = "";
      synopsis = "Newtype wrappers for approximate equality";
      description = "The purpose of this module is to provide newtype wrappers that allow one to effectively override the equality operator of a value so that it is /approximate/ rather than /exact/.  The wrappers use type annotations to specify the tolerance; the 'Digits' type constructor has been provided for specifying the tolerance using type-level natural numbers.  Instances for all of the classes in the numerical hierarchy have been provided for the wrappers, so the wrapped values can mostly be used in the same way as the original values. (In fact, most of the time one doesn't even have to wrap the starting values, since expressions such as @(1+sqrt 2/3)@ are automatically wrapped thanks to the 'fromIntegral' method of the 'Num' typeclass.)\nSee the documentation for Data.Eq.Approximate for more detailed information on how to use this package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."type-level-natural-number" or (errorHandler.buildDepError "type-level-natural-number"))
        ];
        buildable = true;
      };
    };
  }