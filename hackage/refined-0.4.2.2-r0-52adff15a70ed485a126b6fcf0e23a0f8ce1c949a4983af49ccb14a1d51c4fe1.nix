{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { aeson = true; quickcheck = true; };
    package = {
      specVersion = "2.0";
      identifier = { name = "refined"; version = "0.4.2.2"; };
      license = "MIT";
      copyright = "Copyright © 2015, Nikita Volkov\nCopyright © 2018, Remy Goldschmidt\nCopyright © 2019, chessai";
      maintainer = "chessai <chessai1996@gmail.com>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/refined";
      url = "";
      synopsis = "Refinement types with static and runtime checking";
      description = "For an extensive introduction to the library please follow to\n<http://nikita-volkov.github.io/refined this blog-post>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.prettyprinter)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs.aeson)) ++ (pkgs.lib).optional (flags.quickcheck) (hsPkgs.QuickCheck);
        };
      tests = {
        "doctest" = {
          depends = [ (hsPkgs.base) (hsPkgs.refined) (hsPkgs.doctest) ];
          };
        };
      };
    }