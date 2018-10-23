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
        name = "data-clist";
        version = "0.0.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Van Enk <vanenkj@gmail.com>";
      author = "John Van Enk <vanenkj@gmail.com>";
      homepage = "https://github.com/sw17ch/data-clist";
      url = "";
      synopsis = "Simple functional ring type.";
      description = "Simple functional bidirectional ring type.\nGiven that the ring terminiology clashes with certain\nmathematical branches, we're using the term CList or\nCircularList instead.";
      buildType = "Simple";
    };
    components = {
      "data-clist" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }