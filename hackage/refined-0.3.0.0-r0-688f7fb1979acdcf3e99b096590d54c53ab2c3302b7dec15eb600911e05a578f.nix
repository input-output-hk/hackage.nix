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
        name = "refined";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "Copyright © 2015, Nikita Volkov\nCopyright © 2018, Remy Goldschmidt\nCopyright © 2018, Daniel Cartwright";
      maintainer = "chessai <chessai1996@gmail.com>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/refined";
      url = "";
      synopsis = "Refinement types with static and runtime checking";
      description = "For an extensive introduction to the library please follow to\n<http://nikita-volkov.github.io/refined this blog-post>.";
      buildType = "Simple";
    };
    components = {
      "refined" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.prettyprinter)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
        ];
      };
    };
  }