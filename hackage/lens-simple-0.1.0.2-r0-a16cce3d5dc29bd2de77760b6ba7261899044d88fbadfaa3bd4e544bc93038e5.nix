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
      identifier = { name = "lens-simple"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012,2013,2014 Russell O'Connor, 2014 michaelt";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "https://github.com/michaelt/lens-simple";
      url = "";
      synopsis = "simplified import of elementary lens-family combinators";
      description = "This module, <http://hackage.haskell.org/package/lens-simple/docs/Lens-Simple.html @Lens.Simple@> , just re-exports the main modules from Russell O\\'Connor's\n<http://hackage.haskell.org/package/lens-family lens-family>\npackage, the original <http://r6.ca/blog/20120623T104901Z.html van Laarhoven lens> library.\n@Lens.Simple@ also re-exports @makeLenses@ and\nother TH incantations from Dan Burton's associated\n<http://hackage.haskell.org/package/lens-family-th lens-family-th>.\n\nThe idea is just to make a sort of minimal-dependency @lens-family@ equivalent of @import Control.Lens@, namely @import Lens.Simple@\n/-/- it's even one character shorter!\n\nAs an illustration, note that the\n<https://github.com/michaelt/lens-family-simple/blob/master/examples/Pong.hs pong example>\nfrom the @lens@ library requires only this abbreviating change of imports.\nIf you care to make that program more complicated, you might at some point need\nthe unfathomably more sophisticated material in @Control.Lens@.\nBecause @lens-family@ accords as\nfar as possible, with @Control.Lens@, within its more limited sphere,\na change of imports will often be all that is necessary to begin using them.\n\nIt is rarely necessary to exceed the materials exported here when using\nthe lenses and quasi-lenses exported by e.g.\n<http://hackage.haskell.org/package/pipes-bytestring pipes-bytestring>\nor <http://hackage.haskell.org/package/pipes-group pipes-group>. It is for such\nuse-cases that this module is principally intended.\n\nNote that many of the other lenses and combinators are a bit more\nspecialized than their @Control.Lens@ equivalents:\nfor example, _1 and _2 are here\nfamiliarly specialized to act just on real Haskell\npairs. With the loss of abstraction we also of course\nlose the concomitant opaque error messages\nabout @Field1 s t a b@ etc.";
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