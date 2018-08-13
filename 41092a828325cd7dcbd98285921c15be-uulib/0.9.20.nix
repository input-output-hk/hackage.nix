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
      specVersion = "1.6";
      identifier = {
        name = "uulib";
        version = "0.9.20";
      };
      license = "BSD-3-Clause";
      copyright = "Universiteit Utrecht";
      maintainer = "UU Computer Science";
      author = "";
      homepage = "https://github.com/UU-ComputerScience/uulib";
      url = "";
      synopsis = "Haskell Utrecht Tools Library";
      description = "Fast Parser Combinators and Pretty Printing Combinators";
      buildType = "Simple";
    };
    components = {
      "uulib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }