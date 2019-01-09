{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lens-simple"; version = "0.1.0.7"; };
      license = "BSD-3-Clause";
      copyright = "2012, 2013, 2014 Russell O'Connor; 2015 Michael Thompson";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "https://github.com/michaelt/lens-simple";
      url = "";
      synopsis = "simplified import of elementary lens-family combinators";
      description = "This module, <http://hackage.haskell.org/package/lens-simple/docs/Lens-Simple.html Lens.Simple>,\njust re-exports the main modules from Russell O\\'Connor's\n<http://hackage.haskell.org/package/lens-family lens-family> package.\n@lens-family@ is particularly remarkable for its minute number of dependencies:\napart from <http://hackage.haskell.org/package/mtl mtl>\nthey are all ghc \\'boot\\' libraries.\n@Lens.Simple@ also re-exports @makeLenses@ and\nother convenient TH incantations from Dan Burton's associated\n<http://hackage.haskell.org/package/lens-family-th lens-family-th>.\n\nThe idea, then, is just to make a sort of low-powered, minimal-dependency, @lens-family@ equivalent of\nthe 800 lb gorilla of lens library imports:\n\n> import Control.Lens\n\nnamely, the light-weight and elegant:\n\n> import Lens.Simple\n\nCheck it out, it's even one character shorter!\n\nAs an illustration of the simplicity of the\nfundamental van Laarhoven lens combinators - and their homogeneity with\n@Control.Lens@ - note that the gloss\n<https://github.com/michaelt/lens-family-simple/blob/master/examples/Pong.hs pong example>\nfrom the @lens@ library examples directory - which continues to be\nthe best introductory lens tutorial precisely by saying nothing -\nrequires /only/ this abbreviating change of imports.\nIf you make that program more complicated,\nyou might of course end up needing\nthe more sophisticated material in @Control.Lens@ and\nits immense mass of dependencies.\nWithin its more limited sphere, though, @lens-family@ accords as\nfar as possible with @lens@, so this switch\nwill often be all that is necessary to begin using them.\n\nThis module was originally intended to simplify the use of packages that\nfollow the original promise of the van Laarhoven lenses.\n/Correct practice is to export lenses without depending on a lens-library, where possible./\nIn basic cases these just use familiar @Prelude@ types, after all.\nExamples of best practices in this respect are e.g. <http://hackage.haskell.org/package/lens-family-th lens-family-th> which\ndoesn't depend on @lens-family@ despite its name and pipes-related packages like\n<http://hackage.haskell.org/package/pipes-bytestring pipes-bytestring>\nand <http://hackage.haskell.org/package/pipes-group pipes-group>.\nBecause of the heavily monadic character of the latter libraries, the\nextra material in @Control.Lens@ is rarely of use anyway; one sticks largely\nto @view@, @set@, @over@ and, for state operations, @zoom@.\n\nNote that lenses and other combinators are here frequently a bit more\nspecialized than their @Control.Lens@ equivalents:\nfor example, _1 and _2 are here\nfamiliarly specialized to act just on real Haskell\npairs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.lens-family)
          (hsPkgs.lens-family-core)
          (hsPkgs.lens-family-th)
          ];
        };
      };
    }