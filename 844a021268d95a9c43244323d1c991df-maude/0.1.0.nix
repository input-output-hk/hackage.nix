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
      specVersion = "1.2";
      identifier = {
        name = "maude";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Lazar <lazar6@illinois.edu>";
      author = "David Lazar";
      homepage = "http://git.mzero.org/maude/";
      url = "";
      synopsis = "An interface to the Maude rewriting system.";
      description = "This package provides a simple interface for doing Maude\nrewrites from within Haskell.";
      buildType = "Simple";
    };
    components = {
      "maude" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.directory)
        ];
      };
    };
  }