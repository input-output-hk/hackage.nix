{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "persistent-pagination"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Matt Parsons";
      maintainer = "parsonsmattt@gmail.com";
      author = "Matt Parsons";
      homepage = "https://github.com/parsonsmatt/persistent-pagination#readme";
      url = "";
      synopsis = "Efficient and correct pagination for persistent queries.";
      description = "Please see the README on GitHub at <https://github.com/parsonsmatt/persistent-pagination#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.persistent)
          (hsPkgs.conduit)
          (hsPkgs.mtl)
          (hsPkgs.foldl)
          (hsPkgs.microlens)
          ];
        };
      tests = {
        "persistent-pagination-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.persistent-pagination)
            (hsPkgs.persistent)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.persistent-template)
            (hsPkgs.hspec)
            (hsPkgs.time)
            (hsPkgs.hspec-discover)
            (hsPkgs.QuickCheck)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }