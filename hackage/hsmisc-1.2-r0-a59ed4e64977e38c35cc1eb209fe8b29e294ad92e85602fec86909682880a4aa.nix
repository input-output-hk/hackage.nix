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
      specVersion = "1.8";
      identifier = {
        name = "hsmisc";
        version = "1.2";
      };
      license = "BSD-3-Clause";
      copyright = "2014-2015 Dino Morelli";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli";
      homepage = "http://hub.darcs.net/dino/hsmisc";
      url = "";
      synopsis = "A collection of miscellaneous modules";
      description = "Some Haskell source code that proved to be useful in various projects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.parsec)
          (hsPkgs.time)
        ];
      };
      tests = {
        "test-hsmisc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }