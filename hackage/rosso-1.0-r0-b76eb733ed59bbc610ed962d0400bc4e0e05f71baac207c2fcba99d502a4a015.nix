{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "rosso";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "robh dot junpi at gmail dot com";
      author = "Robert Henderson";
      homepage = "";
      url = "";
      synopsis = "General purpose utility library";
      description = "A miscellaneous collection of re-usable functions and data\nstructures. Many of Rosso's modules are direct extensions of the\nHaskell base libraries; for example, Data.Map.Rosso1 extends\nData.Map, Control.Monad.Rosso1 extends Control.Monad, etc.\n\nRosso is designed to remain backward-compatible with any client code\nthat works with an older version of itself. To this end, all module\nnames include explicit version numbers.";
      buildType = "Simple";
    };
    components = {
      "rosso" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
        ];
      };
    };
  }