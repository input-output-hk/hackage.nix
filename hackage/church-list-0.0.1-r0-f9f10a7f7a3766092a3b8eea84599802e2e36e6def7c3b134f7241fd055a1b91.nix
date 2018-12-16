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
      specVersion = "1.10";
      identifier = {
        name = "church-list";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "";
      url = "";
      synopsis = "Lazy lists with O(1) concatenation that, unlike dlists, allow inspection";
      description = "Replicates the @Data.List@ interface for lists built around the type @forall\nr. Monoid r => (a -> r) -> r@.  This allows for O(1) concatenation and snoc,\njust as difference lists do, but without requiring that every operation\n(such as map) render the list.\n\nAs motivation: Although difference lists are great for use with Writer, they\nare horrible for use with State, because getting the list and querying an\nelement will result in producing a structure which is thrown away.  With\nmlists, you can both append to, and inspect, the list in progress without\nany wasted work.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.church-list)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }