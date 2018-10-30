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
      specVersion = "1.6";
      identifier = {
        name = "quickspec";
        version = "0.9.6";
      };
      license = "BSD-3-Clause";
      copyright = "2009-2013 Nick Smallbone";
      maintainer = "nicsma@chalmers.se";
      author = "Nick Smallbone";
      homepage = "https://github.com/nick8325/quickspec";
      url = "";
      synopsis = "Equational laws for free!";
      description = "QuickSpec automatically finds equational laws about your program.\n\nGive it an API, i.e. a collection of functions, and it will spit out\nequations about those functions. For example, given @reverse@, @++@\nand @[]@, QuickSpec finds six laws, which are exactly the ones you\nmight write by hand:\n\n> xs++[] == xs\n> []++xs == xs\n> (xs++ys)++zs == xs++(ys++zs)\n> reverse [] == []\n> reverse (reverse xs) == xs\n> reverse xs++reverse ys == reverse (ys++xs)\n\nThe laws that QuickSpec generates are not proved correct, but have\npassed at least 200 QuickCheck tests.\n\nFor more information, see the @README@ file at\nhttps://github.com/nick8325/quickspec/blob/master/README.asciidoc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.QuickCheck)
          (hsPkgs.random)
          (hsPkgs.spoon)
          (hsPkgs.array)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }