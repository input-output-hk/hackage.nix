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
      identifier = { name = "ArrayRef"; version = "0.1.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bulat Ziganshin <Bulat.Ziganshin@gmail.com>";
      author = "Bulat Ziganshin";
      homepage = "http://haskell.org/haskellwiki/Library/ArrayRef";
      url = "";
      synopsis = "Unboxed references, dynamic arrays and more";
      description = "This array library supports: unboxed references,\nMonad-independent references, syntax sugar for mutable types,\na reimplemented Arrays library, changes in MArray usage,\nand using dynamic (resizable) arrays";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }