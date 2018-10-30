{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "pointless-lenses";
        version = "0.0.8";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hugo Pacheco <hpacheco@di.uminho.pt>";
      author = "Alcino Cunha <alcino@di.uminho.pt>, Hugo Pacheco <hpacheco@di.uminho.pt>";
      homepage = "http://haskell.di.uminho.pt/wiki/Pointless+Lenses";
      url = "";
      synopsis = "Pointless Lenses library";
      description = "Pointless Lenses is library of bidirectional lenses (<http://www.cis.upenn.edu/~bcpierce/papers/newlenses-popl.pdf>) defined in the point-free style of programming.\nGeneric bidirectional lenses can be defined over inductive types by relying in a set of lifted lens combinators from the standard point-free combinators.\nRecursive lenses can be defined by combining the lenses for the recursion patterns of catamorphisms and anamorphism.\nMore refined lens behavior can be achieved a more operation-based variant of delta-lenses (<>).\nThe library also provides QuickCheck procedures to test the well-behavedness of user-defined lens transformations.\nMore details can be found in the accompanying papers <http://alfa.di.uminho.pt/~hpacheco/publications/mpc10.pdf> and <http://alfa.di.uminho.pt/~hpacheco/publications/hdlenses.pdf>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.derive)
          (hsPkgs.pointless-haskell)
          (hsPkgs.containers)
          (hsPkgs.QuickCheck)
          (hsPkgs.haskell98)
          (hsPkgs.process)
        ];
      };
    };
  }