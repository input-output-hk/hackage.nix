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
      specVersion = "1.24";
      identifier = {
        name = "int-multimap";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "(c) 2018, Metrix.AI";
      maintainer = "Metrix.AI Ninjas <ninjas@metrix.ai>";
      author = "Oleg Shevchenko <shevchenko.cmc@gmail.com>";
      homepage = "https://github.com/metrix-ai/int-multimap";
      url = "";
      synopsis = "A data structure that associates each Int key with a set of values";
      description = "";
      buildType = "Simple";
    };
    components = {
      "int-multimap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hashable)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }