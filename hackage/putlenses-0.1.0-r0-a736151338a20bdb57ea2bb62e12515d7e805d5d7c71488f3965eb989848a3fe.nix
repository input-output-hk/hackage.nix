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
      specVersion = "1.4";
      identifier = { name = "putlenses"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hugo Pacheco <hpacheco@nii.ac.jp>";
      author = "Hugo Pacheco <hpacheco@nii.ac.jp>";
      homepage = "";
      url = "";
      synopsis = "Put-based lens library";
      description = "Putlenses is a library of lenses where users specify backward @put@ transformations (@set@ in the Haskell lens package) and the library provides forward @get@ transformations for free (@view@ in the lens package). This contrasts with other traditional libraries for bidirectional programming, where forward transformations are specified instead and backward transformations are automatically derived, and offers more expressive power and control over the bidirectional synchronization strategies to users, while preserving a similarly maintainable specification style.\nAn introduction to putback-based programming can be found at <http://grace-center.jp/wp-content/uploads/2013/01/GRACE-TR-2012-08.pdf>.\nA draft report on putlenses is available at <http://www.prg.nii.ac.jp/members/hpacheco/publications/putlenses.pdf>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
        ];
        buildable = true;
      };
    };
  }