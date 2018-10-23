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
        name = "cheapskate-highlight";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom";
      homepage = "http://github.com/aelve/cheapskate-highlight";
      url = "";
      synopsis = "Code highlighting for cheapskate";
      description = "Code highlighting for cheapskate-parsed Markdown. Takes cheapskate AST,\nreturns cheapskate AST with code blocks highlighted.";
      buildType = "Simple";
    };
    components = {
      "cheapskate-highlight" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.cheapskate)
          (hsPkgs.highlighting-kate)
          (hsPkgs.text)
        ];
      };
    };
  }