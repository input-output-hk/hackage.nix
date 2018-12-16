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
        name = "while-lang-parser";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nilsson.dd+code@gmail.com";
      author = "David Nilsson And Patrik Berggren";
      homepage = "https://github.com/davnils/while-lang-parser";
      url = "";
      synopsis = "Parser for the While language.";
      description = "Parser for the While language described in /Semantics with Applications/ by Nielson and Nielson.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.indents)
        ];
      };
    };
  }