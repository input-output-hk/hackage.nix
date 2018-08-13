{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "language-nix";
        version = "2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Peter Simons";
      homepage = "https://github.com/peti/language-nix";
      url = "";
      synopsis = "Data types and useful functions to represent and manipulate the Nix language.";
      description = "Data types and useful functions to represent and manipulate the Nix language.";
      buildType = "Simple";
    };
    components = {
      "language-nix" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.lens)
          (hsPkgs.pretty)
          (hsPkgs.regex-posix)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.lens)
            (hsPkgs.pretty)
            (hsPkgs.regex-posix)
            (hsPkgs.doctest)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }