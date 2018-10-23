{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Elm";
        version = "0.1.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2011-2012 Evan Czaplicki";
      maintainer = "info@elm-lang.org";
      author = "Evan Czaplicki";
      homepage = "http://elm-lang.org";
      url = "";
      synopsis = "The Elm compiler and server.";
      description = "Elm aims to make client-side web-development more pleasant.\nIt is a statically/strongly typed, functional reactive\nlanguage to HTML, CSS, and JS. This package provides a\ncompiler and server for Elm.";
      buildType = "Simple";
    };
    components = {
      "Elm" = {};
      exes = {
        "elm" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.deepseq)
          ];
        };
        "elm-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.blaze-html)
            (hsPkgs.HTTP)
            (hsPkgs.happstack-server)
          ];
        };
      };
    };
  }