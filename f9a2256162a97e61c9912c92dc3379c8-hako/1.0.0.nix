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
      specVersion = "1.8";
      identifier = {
        name = "hako";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "";
      url = "";
      synopsis = "A mako-like quasi-quoter template library";
      description = "A quasi-quote based HTML template library with a simplistic\napproach, Hako borrows its philosophy from Mako, a popular\nPython template library. The idea is that the template\nmechanism itself should be kept simple, while exposing the\nfull expressivity of Haskell itself inside the templates.\nAt the same time, any value interpolated into a template gets\nHTML-encoded by default, but you can override this behavior\nby providing your own instances of the 'ToHtml' typeclass.";
      buildType = "Simple";
    };
    components = {
      "hako" = {
        depends  = [
          (hsPkgs.parsec)
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.transformers)
          (hsPkgs.text)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hako)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }