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
        name = "ascii-string";
        version = "1.0.1.1";
      };
      license = "MIT";
      copyright = "(c) 2018, Metrix.AI";
      maintainer = "Metrix.AI Tech Team <tech@metrix.ai>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/metrix-ai/ascii-string";
      url = "";
      synopsis = "Compact representation of ASCII strings";
      description = "ASCII strings stored using just 7 bits per character.\nCompared to ByteString, this saves you a whole byte per 8 characters.";
      buildType = "Simple";
    };
    components = {
      "ascii-string" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.deepseq)
          (hsPkgs.deferred-folds)
          (hsPkgs.foldl)
          (hsPkgs.hashable)
          (hsPkgs.primitive)
          (hsPkgs.primitive-extras)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.ascii-string)
            (hsPkgs.cereal)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.rerebase)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }