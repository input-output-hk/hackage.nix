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
        version = "0.8.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2011-2012 Evan Czaplicki";
      maintainer = "info@elm-lang.org";
      author = "Evan Czaplicki";
      homepage = "http://elm-lang.org";
      url = "";
      synopsis = "The Elm language module.";
      description = "Elm aims to make client-side web-development more pleasant.\nIt is a statically/strongly typed, functional reactive\nlanguage to HTML, CSS, and JS. This package provides a\nlibrary for Elm compilation in Haskell and a compiler\nexecutable.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.deepseq)
          (hsPkgs.parsec)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.text)
          (hsPkgs.shakespeare)
          (hsPkgs.template-haskell)
          (hsPkgs.pandoc)
          (hsPkgs.bytestring)
          (hsPkgs.hjsmin)
          (hsPkgs.indents)
          (hsPkgs.filepath)
          (hsPkgs.json)
          (hsPkgs.directory)
        ];
      };
      exes = {
        "elm" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.deepseq)
            (hsPkgs.parsec)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.cmdargs)
            (hsPkgs.pandoc)
            (hsPkgs.bytestring)
            (hsPkgs.hjsmin)
            (hsPkgs.indents)
            (hsPkgs.filepath)
            (hsPkgs.json)
            (hsPkgs.directory)
          ];
        };
        "elm-doc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.pandoc)
            (hsPkgs.cmdargs)
            (hsPkgs.indents)
          ];
        };
      };
    };
  }