{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hashtables-plus";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hashtables-plus";
      url = "";
      synopsis = "Extensions for a \"hashtables\" library";
      description = "A dome API over the \\\"hashtables\\\" library,\nwhich provides 'null' and 'size' functions of /O(1)/ complexity and\nadvanced data structures: multimap, set, \"StableName\"-based structures.";
      buildType = "Simple";
    };
    components = {
      "hashtables-plus" = {
        depends  = [
          (hsPkgs.hashtables)
          (hsPkgs.hashable)
          (hsPkgs.loch-th)
          (hsPkgs.placeholders)
          (hsPkgs.base)
        ];
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.hashtables-plus)
            (hsPkgs.criterion-plus)
            (hsPkgs.hashtables)
            (hsPkgs.hashable)
            (hsPkgs.string-conversions)
            (hsPkgs.th-printf)
            (hsPkgs.text)
            (hsPkgs.mwc-random)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.deepseq)
            (hsPkgs.loch-th)
            (hsPkgs.placeholders)
            (hsPkgs.base)
          ];
        };
      };
    };
  }