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
        name = "zeromq4-simple";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 (c) Local Cooking Inc.";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "";
      url = "";
      synopsis = "More constrained extensions to zeromq4-haskell";
      description = "Please see the README on GitHub at <https://github.com/githubuser/zeromq4-simple#readme>";
      buildType = "Simple";
    };
    components = {
      "zeromq4-simple" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.constraints)
          (hsPkgs.hashable)
          (hsPkgs.uuid)
          (hsPkgs.zeromq4-haskell)
        ];
      };
    };
  }