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
      identifier = { name = "bindings-DSL"; version = "1.0.21"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Wiegley <johnw@fpcomplete.com>";
      author = "Maurício C. Antunes";
      homepage = "https://github.com/jwiegley/bindings-dsl/wiki";
      url = "";
      synopsis = "FFI domain specific language, on top of hsc2hs.";
      description = "This is a set of macros to be used when writing Haskell FFI.\nThey were designed to be able to fully describe C interfaces,\nso that hsc2hs can extract from them all Haskell code needed to\nmimic such interfaces. All Haskell names used are automatically\nderived from C names, structures are mapped to Haskell instances\nof Storable, and there are also macros you can use with C code\nto help write bindings to inline functions or macro functions.\nDocumentation is available at package homepage:\n\n<https://github.com/jwiegley/bindings-dsl/wiki>\n\nThe extra module Bindings.Utilities will contain tools that may\nbe convenient when working with FFI.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }