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
      specVersion = "1.4";
      identifier = {
        name = "putlenses";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hugo Pacheco <hpacheco@gmail.com>";
      author = "Hugo Pacheco <hpacheco@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Put-based lens library";
      description = "Putlenses is a library of lenses where users specify backward @put@ transformations (@set@ in the Haskell lens package) and the library provides forward @get@ transformations for free (@view@ in the lens package). This contrasts with other traditional libraries for bidirectional programming, where forward transformations are specified instead and backward transformations are automatically derived, and offers more expressive power and control over the bidirectional synchronization strategies to users, while preserving a similarly maintainable specification style.\nAn introduction to putback-based programming can be found at <http://grace-center.jp/wp-content/uploads/2013/01/GRACE-TR-2012-08.pdf>.\nA research paper on putlenses is available at <http://dl.acm.org/citation.cfm?id=2543737>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.QuickCheck)
          (hsPkgs.transformers)
          (hsPkgs.split)
          (hsPkgs.safe)
        ];
      };
    };
  }