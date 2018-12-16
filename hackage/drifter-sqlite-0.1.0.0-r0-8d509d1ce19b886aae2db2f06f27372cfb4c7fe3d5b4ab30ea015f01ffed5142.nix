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
        name = "drifter-sqlite";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Michael Xavier";
      maintainer = "michael@michaelxavier.net";
      author = "Michael Xavier";
      homepage = "https://github.com/MichaelXavier/drifter-sqlite#readme";
      url = "";
      synopsis = "SQLite support for the drifter schema migraiton tool";
      description = "Please see the README on GitHub at <https://github.com/MichaelXavier/drifter-sqlite#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.drifter)
          (hsPkgs.mtl)
          (hsPkgs.sqlite-simple)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "drifter-sqlite-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.drifter)
            (hsPkgs.drifter-sqlite)
            (hsPkgs.mtl)
            (hsPkgs.sqlite-simple)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }