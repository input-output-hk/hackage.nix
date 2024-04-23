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
      specVersion = "1.10";
      identifier = { name = "lens-simple"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012,2013,2014 Russell O'Connor, 2014 michaelt";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "https://github.com/michaelt/lens-simple";
      url = "";
      synopsis = "simplified import of essential lens combinators";
      description = "This module, @Lens.Simple@, just re-exports the main modules from Russell O\\'Connor's\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>\npackage, the original <http://r6.ca/blog/20120623T104901Z.html van Laarhoven lens> library.\n@Lens.Simple@ also re-exports @makeLenses@ and\nother TH incantations from Dan Burton's associated\n<http://hackage.haskell.org/package/lens-family-th lens-family-th>.\n\nThe idea is just to make a lens-family equivalent of @import Control.Lens@, namely @import Lens.Simple@\n/-/- it's even one character shorter! As an illustration, note that\nthe <https://github.com/michaelt/lens-family-simple/blob/master/examples/Pong.hs pong example>\nfrom the @lens@ library requires only this abbreviating change of imports.\n\nSimilarly, when need arises for the unfathomably more\nsophisticated material in @Control.Lens@, a\nchange of imports will tend be all that is necessary\nto begin using them.\n\nIt should be kept in mind that the @zoom@ exported here does\nnot use @MonadState@ from @mtl@ but is\nspecialized to @Control.Monad.Trans.State.Strict@  Many of\nthe other lenses and combinators are a bit more\nspecialized than their @Control.Lens@ equivalents:\nfor example, _1 and _2 are here\nfamiliarly specialized to act just on real Haskell\npairs; with the loss of abstraction we also of course\nlose the concomitant opaque error messages\nabout @Field1 s t a b@ etc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."lens-family-core" or (errorHandler.buildDepError "lens-family-core"))
          (hsPkgs."lens-family-th" or (errorHandler.buildDepError "lens-family-th"))
        ];
        buildable = true;
      };
    };
  }