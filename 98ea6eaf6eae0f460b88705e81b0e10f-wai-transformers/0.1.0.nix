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
        name = "wai-transformers";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Athan Clark";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/wai-transformers#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://git.localcooking.com/tooling/wai-transformers#readme>";
      buildType = "Simple";
    };
    components = {
      "wai-transformers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.extractable-singleton)
          (hsPkgs.monad-control-aligned)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-websockets)
          (hsPkgs.websockets)
        ];
      };
    };
  }