{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "linked-list-with-iterator"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "MIT";
      maintainer = "cindylinz@gmail.com";
      author = "Cindy Wang (CindyLinz)";
      homepage = "https://github.com/CindyLinz/Haskell-linked-list-with-iterator#readme";
      url = "";
      synopsis = "A pure linked list which is mutable through iterators.";
      description = "It's iternally implemented by 'Data.IntMap.Strict.IntMap' or 'Data.Map.Strict.Map' 'Integer',\nusing 'Int' or 'Integer' as the iterator type respectly.\nMost of the operations cost @O(lg N)@.\n\nEach newly inserted element will consume a unique number and never reuse old numbers.\nChoose 'Int' one if you're sure that there're no more than 'Int' space times of insertions,\nor choose 'Integer' one otherwise.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      tests = {
        "linked-list-with-iterator-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.linked-list-with-iterator) ];
          };
        };
      };
    }