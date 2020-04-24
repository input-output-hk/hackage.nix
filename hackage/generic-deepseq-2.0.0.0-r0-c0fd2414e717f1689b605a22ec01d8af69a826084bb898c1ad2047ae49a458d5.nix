{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "generic-deepseq"; version = "2.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2012, Maxime Henrion";
      maintainer = "Maxime Henrion <mhenrion@gmail.com>";
      author = "Maxime Henrion";
      homepage = "";
      url = "";
      synopsis = "Generic deep evaluation of data structures";
      description = "This package provides a 'deepseq' function analogous to 'seq', except that it\ntraverses the entire data structure, evaluating it fully, and not just up to\nhead normal form.\n\nUsing lists as an example:\n\n> > [1,2,undefined] `seq` 3\n> 3\n\nWhereas with 'deepseq':\n\n> > [1,2,undefined] `deepseq` 3\n> *** Exception: Prelude.undefined\n\nUnlike the @deepseq@ package, this implementation is based on the\n\"GHC.Generics\" framework as found in GHC >= 7.2, so that it can generate\ninstances automatically for any datatype that has a 'Generic' instance,\nwithout further code.\n\n> data MyType = MyType String Int (Maybe Double)\n>   deriving Generic\n> instance DeepSeq MyType\n\nChanges in version 2.0.0.0:\n\n* Vastly improved performance. As a consequence of these changes, the member function of the DeepSeq class is now 'rnf', instead of 'deepseq'.\n\n* New instances for functions, Ratio and Complex types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }