{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      cgi = false;
      test = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "texmath";
        version = "0.3.0.3";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://github.com/jgm/texmath";
      url = "";
      synopsis = "Conversion of LaTeX math formulas to MathML.";
      description = "The texmathml library provides functions to convert LaTeX\nmath formulas to presentation MathML. It supports\nbasic LaTeX and AMS extensions, but not macros.";
      buildType = "Custom";
    };
    components = {
      "texmath" = {
        depends  = [
          (hsPkgs.xml)
          (hsPkgs.parsec)
          (hsPkgs.containers)
        ] ++ (if compiler.isGhc && compiler.version.ge "6.10"
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [ (hsPkgs.base) ]);
      };
      exes = {
        "testTeXMathML" = {};
        "texmath-cgi" = {
          depends  = pkgs.lib.optionals (_flags.cgi) [
            (hsPkgs.cgi)
            (hsPkgs.json)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }