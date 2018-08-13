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
        name = "Elm";
        version = "0.8.0.1";
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
      "Elm" = {
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
          (hsPkgs.template-haskell)
          (hsPkgs.shakespeare)
          (hsPkgs.pandoc)
          (hsPkgs.bytestring)
          (hsPkgs.hjsmin)
          (hsPkgs.indents)
          (hsPkgs.filepath)
          (hsPkgs.template-haskell)
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
            (hsPkgs.template-haskell)
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