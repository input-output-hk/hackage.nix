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
      specVersion = "1.8";
      identifier = {
        name = "luthor";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "zankoku.okuno@gmail.com";
      author = "Zankoku Okuno";
      homepage = "https://github.com/Zankoku-Okuno/luthor";
      url = "";
      synopsis = "Tools for lexing and utilizing lexemes that integrate with Parsec.";
      description = "Like parser combinators? Building a big parser? Save hundreds of\nsloc, hours of debuging and several headaches by using Luthor\non top of the familiar Parsec library.\n\nParsec works great for small parsers, but as the size of the\nparser grows, complexity can grow exponentially without taking\nserious and tricky precautions. Luthor provides reusable\nutilities to isolate the complex parts of parsing.\nAmonst its weaponry are 1) more composable combinators,\n2) pre-built token parsers, 3) tools to build a scannerful parser,\nand 4) tools to work with indentation.\nLuthor reduces overall complexity, generally increases performance\nand error reporting, and cuts down on wheel re-invention.\n\nBIG CAVEAT: It is difficult to understand all the ways in which\nParsec fails to be composable, so there may be some combinators\nin Luthor which fail to be composable. If you're getting weird\n(i.e. Parsec-like) results, add a @try@ and please report.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "test-combinator" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
          ];
        };
        "test-syntax" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
          ];
        };
        "test-indent" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }