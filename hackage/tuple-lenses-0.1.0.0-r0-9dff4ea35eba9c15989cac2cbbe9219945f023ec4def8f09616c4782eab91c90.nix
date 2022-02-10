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
      specVersion = "1.12";
      identifier = { name = "tuple-lenses"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "http://github.com/jfischoff/disjoint-lenses";
      url = "";
      synopsis = "Stock FieldN combos and generators";
      description = "This package provides some stock lenses for manipulating multiple elements\nof a tuple at once. For instance:\n\n>> (1,2,3)^._13\n> (1, 3)\n\nThe package provide all lenses that are in increasing order, for FieldN classes 1-9. If you\nwant to swap the order or permute the elements, you need to make your own.\n\nCustom combos are provided by a Template Haskell function.\n\n>> ('a','b','c','d') ^. $(tl [4,1,2,3])\n> ('d','a','b','c')";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }