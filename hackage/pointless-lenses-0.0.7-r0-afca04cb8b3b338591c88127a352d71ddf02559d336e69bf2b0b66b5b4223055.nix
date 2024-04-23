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
      identifier = { name = "pointless-lenses"; version = "0.0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hugo Pacheco <hpacheco@di.uminho.pt>";
      author = "Alcino Cunha <alcino@di.uminho.pt>, Hugo Pacheco <hpacheco@di.uminho.pt>";
      homepage = "http://haskell.di.uminho.pt/wiki/Pointless+Lenses";
      url = "";
      synopsis = "Pointless Lenses library";
      description = "Pointless Lenses is library of bidirectional lenses (<http://www.cis.upenn.edu/~bcpierce/papers/newlenses-popl.pdf>) defined in the point-free style of programming.\nGeneric bidirectional lenses can be defined over inductive types by relying in a set of lifted lens combinators from the standard point-free combinators.\nVirtually any recursive lens can be defined by combining the lenses for the recursion patterns of catamorphisms and anamorphism.\nThe library also provides QuickCheck procedures to test the well-behavedness of user-defined lens transformations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pointless-haskell" or (errorHandler.buildDepError "pointless-haskell"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
    };
  }