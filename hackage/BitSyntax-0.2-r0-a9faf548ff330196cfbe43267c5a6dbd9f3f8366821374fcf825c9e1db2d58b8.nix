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
      specVersion = "1.0";
      identifier = { name = "BitSyntax"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Adam Langley";
      homepage = "http://www.imperialviolet.org/binary/bitsyntax";
      url = "";
      synopsis = "A module to aid in the (de)serialisation of binary data";
      description = "This provides a simple function for the construction of binary data (a cross between Erlang's bit syntax and Python's struct module) as well as a Template Haskell function which deconstructs similar binary data.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }