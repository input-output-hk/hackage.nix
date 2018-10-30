{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "drifter";
        version = "0.2.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Xavier <michael@michaelxavier.net>";
      author = "AndrewRademacher";
      homepage = "https://github.com/AndrewRademacher/drifter";
      url = "";
      synopsis = "Simple schema management for arbitrary databases.";
      description = "Simple support for migrating database schemas, which allows\nhaskell functions to be run as a part of the migration. Note\nthat this library isn't meant to be used directly, but rather\nas a base library for a specific driver. For an example of a\nfunctioning driver, you shold check out <https://hackage.haskell.org/package/drifter-postgresql drifter-postgresql>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.fgl)
          (hsPkgs.containers)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.drifter)
            (hsPkgs.text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }