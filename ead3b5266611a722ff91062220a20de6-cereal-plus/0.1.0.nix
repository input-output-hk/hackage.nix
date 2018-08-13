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
        name = "cereal-plus";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "(c) 2013, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/cereal-plus";
      url = "";
      synopsis = "Extended serialization library on top of \"cereal\".";
      description = "Provides non-orphan instances for an extended range of types.\nProvides transformer types and support for mutable data.\nReapproaches the naming conventions of \"cereal\" library.\nFor a streaming frontend over this library see \"pipes-cereal-plus\":\n<http://hackage.haskell.org/package/pipes-cereal-plus>";
      buildType = "Simple";
    };
    components = {
      "cereal-plus" = {
        depends  = [
          (hsPkgs.cereal)
          (hsPkgs.errors)
          (hsPkgs.time)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.stm)
          (hsPkgs.mtl)
          (hsPkgs.base)
        ];
      };
    };
  }