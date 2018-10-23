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
        name = "lhs2TeX-hl";
        version = "0.1.0.9";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Alessandro Vermeulen <me@alessandrovermeulen.me>";
      author = "Alessandro Vermeulen <me@alessandrovermeulen.me>";
      homepage = "";
      url = "";
      synopsis = "Literate highlighter preprocessor for lhs2tex";
      description = "A helper executable for highlighting code with lhs2tex. It\nparses any haskell file and outputs a format file to be used\nwith lhs2tex. Currently no recursion is supported.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lhs2TeX-hl" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.MissingH)
            (hsPkgs.syb)
            (hsPkgs.Agda)
            (hsPkgs.cmdargs)
          ];
        };
      };
    };
  }