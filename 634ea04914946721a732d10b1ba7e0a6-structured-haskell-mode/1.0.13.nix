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
      specVersion = "1.8";
      identifier = {
        name = "structured-haskell-mode";
        version = "1.0.13";
      };
      license = "BSD-3-Clause";
      copyright = "Chris Done 2013";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "https://github.com/chrisdone/structured-haskell-mode";
      url = "";
      synopsis = "Structured editing Emacs mode for Haskell";
      description = "Structured editing Emacs mode for Haskell.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "structured-haskell-mode" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.text)
            (hsPkgs.descriptive)
          ];
        };
      };
    };
  }