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
      specVersion = "1.6";
      identifier = {
        name = "language-cil";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Lokhorst <tom@lokhorst.eu>";
      author = "Jeroen Leeuwestein,\nTom Lokhorst";
      homepage = "https://github.com/tomlokhorst/language-cil";
      url = "";
      synopsis = "Manipulating Common Intermediate Language AST";
      description = "Language-Cil is a Haskell library for manipulating CIL\nabstract syntax and generating .il files.\n\nCommon Intermediate Language (CIL), formerly known as\nMicrosoft Intermediate Language (MSIL), is the lowest\nlevel language that runs on Microsoft .NET and Mono.\n\nThis library is still  under development, it only supports\na small subset of the full CIL.\n\nSee <https://github.com/tomlokhorst/language-cil#readme>\nfor an example of how to quickly get started.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bool-extras)
        ];
      };
    };
  }