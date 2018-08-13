{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "path-extra";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018 Athan Clark";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/path-extra#readme";
      url = "";
      synopsis = "Some extensions to Chris Done's path library, for use with urlpath and attoparsec-uri.";
      description = "Please see the README on Github at <https://github.com/githubuser/localcooking-db#readme>";
      buildType = "Simple";
    };
    components = {
      "path-extra" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.path)
          (hsPkgs.text)
        ];
      };
      tests = {
        "path-extra-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.path)
            (hsPkgs.path-extra)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
          ];
        };
      };
    };
  }