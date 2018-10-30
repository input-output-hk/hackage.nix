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
        name = "HaTeX";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lazy.ddiaz@gmail.com";
      author = "Daniel Díaz";
      homepage = "";
      url = "";
      synopsis = "Library for generate LaTeX code.";
      description = "You can write LaTeX files using this package.\nSee Text.LaTeX for a brief introduction.\n\nYou can test the library and report me any bug or suggestion at:\n\nlazy.ddiaz\\@gmail.com\n\nAlso, if you have an example where you use HaTeX, you could send it to my email. Thank you.\n\nChanges from last version:\n\n* Added new documentation.\n\n* Added string combinators for omit some definitions\n\n* Deleted some unnecessary definitions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.dstring)
          (hsPkgs.to-string-class)
          (hsPkgs.string-combinators)
          (hsPkgs.filepath)
        ];
      };
    };
  }