{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "storable-record";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <storable@henning-thielemann.de>";
      author = "Henning Thielemann <storable@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/storable-record/";
      url = "";
      synopsis = "Elegant definition of Storable instances for records";
      description = "With this package definition\nyou can build a Storable instance of a record type\nfrom Storable instances of its elements.\nThis is as simple as:\n\n> import Foreign.Storable.Record as Store\n> import Foreign.Storable (Storable (..), )\n>\n> import Control.Applicative (liftA2, )\n>\n> data Stereo a = Stereo (left, right :: a)\n> -- parentheses must be curly braces, but Haddock does not like them\n>\n> store :: Storable a => Store.Dictionary (Stereo a)\n> store =\n>    Store.run \$\n>    liftA2 Stereo\n>       (Store.element left)\n>       (Store.element right)\n>\n> instance (Storable a) => Storable (Stereo a) where\n>    sizeOf = Store.sizeOf store\n>    alignment = Store.alignment store\n>    peek = Store.peek store\n>    poke = Store.poke store\n\nI cannot promise that the generated memory layout\nis compatible with that of a corresponding C struct.\nHowever, the module generates the smallest layout\nthat is possible with respect to the alignment of the record elements.\nThus this package might provide a Haskell98 alternative to HSC\nwithout a preprocessor.\nIf you encounter, that a record does not have a compatible layout,\nwe should fix that.\nBut also without C compatibility this package is useful\ne.g. in connection with StorableVector.\n\nThe @Stereo@ constructor is exclusively used\nfor constructing the @peek@ function,\nwhere as the accessors in the @element@ calls\nare used for assembling the @poke@ function.\nIt is required that the order of arguments of @Stereo@\nmatches the record accessors in the @element@ calls.\nIf you want that the stored data correctly and fully represents\nyour Haskell data, it must hold:\n\n>   Stereo (left x) (right x) = x   .\n\nUnfortunately this cannot be checked automatically.\nHowever, mismatching types that are caused by swapped arguments\nare detected by the type system.\nOur system performs for you:\nSize and alignment computation, poking and peeking.\nThus several inconsistency bugs can be prevented using this package,\nlike size mismatches space required by @poke@ actions.\nThere is no more restriction,\nthus smart constructors and accessors\nand nested records work, too.\nFor nested records however,\nI recommend individual Storable instances for the sub-records.\n\nYou see it would simplify class instantiation\nif we could tell the class dictionary at once\ninstead of defining each method separately.\n\nFor examples see packages sox and synthesizer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.transformers)
          (hsPkgs.utility-ht)
        ] ++ (if flags.splitbase
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.special-functors)
            (hsPkgs.base)
          ]);
      };
    };
  }