{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lens-simple";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012,2013,2014 Russell O'Connor, 2014 michaelt";
        maintainer = "what_is_it_to_do_anything@yahoo.com";
        author = "michaelt";
        homepage = "https://github.com/michaelt/lens-simple";
        url = "";
        synopsis = "simplified import of elementary lens-family combinators";
        description = "This module, @Lens.Simple@, just re-exports the main modules from Russell O\\'Connor's\n<http://hackage.haskell.org/package/lens-family lens-family>\npackage, the original <http://r6.ca/blog/20120623T104901Z.html van Laarhoven lens> library.\n@Lens.Simple@ also re-exports @makeLenses@ and\nother TH incantations from Dan Burton's associated\n<http://hackage.haskell.org/package/lens-family-th lens-family-th>.\n\nThe idea is just to make a minimal-dependency lens-family equivalent of @import Control.Lens@, namely @import Lens.Simple@\n/-/- it's even one character shorter!\n\nAs an illustration, note that\nthe <https://github.com/michaelt/lens-family-simple/blob/master/examples/Pong.hs pong example>\nfrom the @lens@ library requires only this abbreviating change of imports.\nIf the program more complicated, need might arise for the unfathomably more\nsophisticated material in @Control.Lens@. Because @lens-family@ accords as\nfar as possible, with @Control.Lens@, within its more limited sphere,\na change of imports will often be all that is necessary to begin using them.\n\nIt is rarely necessary to exceed the materials exported here when using\nthe lenses and lensish operations exported by e.g.\n<http://hackage.haskell.org/package/pipes-bytestring pipes-bytestring>\nor <http://hackage.haskell.org/package/pipes-group pipes-group>. It is for such\nuse-cases that this module is principally intended.\n\nNote that many of the other lenses and combinators are a bit more\nspecialized than their @Control.Lens@ equivalents:\nfor example, _1 and _2 are here\nfamiliarly specialized to act just on real Haskell\npairs; with the loss of abstraction we also of course\nlose the concomitant opaque error messages\nabout @Field1 s t a b@ etc.";
        buildType = "Simple";
      };
      components = {
        lens-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens-family
            hsPkgs.lens-family-core
            hsPkgs.lens-family-th
          ];
        };
      };
    }