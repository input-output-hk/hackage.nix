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
      specVersion = "1.10";
      identifier = {
        name = "cereal-plus";
        version = "0.4.2";
      };
      license = "MIT";
      copyright = "(c) 2013, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/cereal-plus";
      url = "";
      synopsis = "An extended serialization library on top of \"cereal\"";
      description = "Provides non-orphan instances for an extended range of types,\ntransformer types and support for mutable data,\nwhile reapproaching the naming conventions of \\\"cereal\\\" library.\nFor a streaming frontend over this library see\n<http://hackage.haskell.org/package/pipes-cereal-plus \"pipes-cereal-plus\">";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.cereal)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.mmorph)
          (hsPkgs.errors)
          (hsPkgs.mtl)
          (hsPkgs.base)
        ];
      };
      tests = {
        "cereal-plus-htf-test-suite" = {
          depends = [
            (hsPkgs.cereal-plus)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.HTF)
            (hsPkgs.cereal)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.hashable)
            (hsPkgs.hashtables)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.mmorph)
            (hsPkgs.errors)
            (hsPkgs.mtl)
            (hsPkgs.base)
          ];
        };
      };
    };
  }