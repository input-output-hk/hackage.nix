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
      specVersion = "3.0";
      identifier = { name = "inj"; version = "2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vladislav Zavialov <vlad.z.4096@gmail.com>";
      author = "Vladislav Zavialov";
      homepage = "";
      url = "";
      synopsis = "A class for injective (one-to-one) functions";
      description = "An injection is a function that never maps distinct elements of the domain\nto the same element of the codomain. For example, @(\\\\x -> x + 1)@ is an\ninjection, but @(\\\\x -> min x 0)@ is not.\n.\nThis package provides the @Inj@ class, whose instances can be composed to\nconstruct nested structures from singleton elements.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }