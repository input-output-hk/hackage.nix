{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "acme-mutable-package";
        version = "0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A mutable package.";
      description = "> -- | This is a joke package. It is meant to show Haskell packages on\n> -- Hackage can be mutated by revising them. This package uses a custom\n> -- Cabal setup. It reads the package description, which is what you are\n> -- reading now, and creates a file at build time from its contents. Since\n> -- revisions are allowed to change descriptions, the package itself is\n> -- mutable. I personally disagree with Hackage revisions, so I authored\n> -- this package to show one way they can be abused.\n>\n> module AcmeMutablePackage ( mutable ) where\n>\n> -- | Are packages mutable? You might think they would be immutable, but you\n> -- would be wrong.\n>\n> mutable :: Bool\n> mutable = True";
      buildType = "Custom";
    };
    components = {
      "acme-mutable-package" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }