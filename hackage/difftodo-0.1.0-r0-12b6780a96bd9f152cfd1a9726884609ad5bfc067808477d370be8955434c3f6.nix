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
        version = "0.1.0";
      };
      license = "LicenseRef-Apache";
      copyright = "";
      maintainer = "Jonathan M. Lange <jml@mumak.net>";
      author = "";
      homepage = "https://github.com/jml/difftodo#readme";
      url = "";
      synopsis = "Generate todo lists from source code";
      description = "";
      buildType = "Simple";
    };
    components = {
      "difftodo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.protolude)
          (hsPkgs.text)
          (hsPkgs.diff-parse)
          (hsPkgs.highlighting-kate)
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
      };
      tests = {
        "fixme-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.highlighting-kate)
            (hsPkgs.difftodo)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }