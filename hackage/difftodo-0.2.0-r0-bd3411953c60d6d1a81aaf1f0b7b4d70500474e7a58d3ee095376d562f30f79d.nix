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
        name = "difftodo";
        version = "0.2.0";
      };
      license = "LicenseRef-Apache";
      copyright = "";
      maintainer = "Jonathan M. Lange <jml@mumak.net>";
      author = "";
      homepage = "https://github.com/jml/difftodo#readme";
      url = "";
      synopsis = "Generate todo lists from source code";
      description = "See README.md for details";
      buildType = "Simple";
    };
    components = {
      "difftodo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.protolude)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.diff-parse)
          (hsPkgs.highlighter2)
        ];
      };
      exes = {
        "all-todos" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.text)
            (hsPkgs.difftodo)
            (hsPkgs.optparse-applicative)
          ];
        };
        "diff-todo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.difftodo)
            (hsPkgs.optparse-applicative)
          ];
        };
        "git-todo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.difftodo)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "fixme-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.difftodo)
            (hsPkgs.highlighter2)
            (hsPkgs.pretty-show)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }