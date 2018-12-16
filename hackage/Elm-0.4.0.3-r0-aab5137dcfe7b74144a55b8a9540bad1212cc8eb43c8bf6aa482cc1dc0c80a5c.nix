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
        name = "Elm";
        version = "0.4.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2011-2012 Evan Czaplicki";
      maintainer = "info@elm-lang.org";
      author = "Evan Czaplicki";
      homepage = "http://elm-lang.org";
      url = "";
      synopsis = "The Elm language module.";
      description = "Elm aims to make client-side web-development more pleasant.\nIt is a statically/strongly typed, functional reactive\nlanguage to HTML, CSS, and JS. This package provides a\nlibrary for Elm compilation in Haskell and a compiler\nexecutable.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.deepseq)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.shakespeare)
          (hsPkgs.pandoc)
          (hsPkgs.bytestring)
          (hsPkgs.hjsmin)
        ];
      };
      exes = {
        "elm" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.deepseq)
            (hsPkgs.cmdargs)
            (hsPkgs.pandoc)
            (hsPkgs.bytestring)
            (hsPkgs.hjsmin)
          ];
        };
      };
    };
  }