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
      specVersion = "1.10";
      identifier = {
        name = "cmark-highlight";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom";
      homepage = "http://github.com/aelve/cmark-highlight";
      url = "";
      synopsis = "Code highlighting for cmark";
      description = "Code highlighting for cmark-parsed Markdown. Takes cmark AST, returns cmark\nAST with code blocks highlighted.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.cmark)
          (hsPkgs.highlighting-kate)
          (hsPkgs.text)
        ];
      };
    };
  }