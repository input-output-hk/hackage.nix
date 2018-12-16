{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { testing = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "template-hsml";
        version = "0.2.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Petr Pilař 2012";
      maintainer = "maintainer+the.palmik@gmail.com";
      author = "Petr Pilař";
      homepage = "";
      url = "";
      synopsis = "Haskell's Simple Markup Language";
      description = "HSML syntax is very similar to that of XML, but there are less rules.\nThe main advantage over plain XML or HTML is that it allows you to embed Haskell declarations\nand expression directly into your template.\nThe main advantage over something like Blaze is that it saves\nyou the overhead of using Blaze's combinators. It's also relatively easy to port your existing\nplain HTML templates into HSML (most of the times, cut & paste will suffice).\nFor examples, see the examples directory.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-markup)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "template-hsml-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.template-hsml)
            (hsPkgs.parsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }