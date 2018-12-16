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
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2014-2015 Dino Morelli";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli";
      homepage = "http://foo/bar/baz.html";
      url = "";
      synopsis = "A collection of miscellaneous modules";
      description = "Some Haskell source code that proved to be useful in various projects. These span a range of tasks from monadic actions to simple config file loading to timestamps for logging and helpers for parsec.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.parsec)
          (hsPkgs.regex-compat)
          (hsPkgs.time)
        ];
      };
      tests = {
        "test-hsmisc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.regex-compat)
          ];
        };
      };
    };
  }