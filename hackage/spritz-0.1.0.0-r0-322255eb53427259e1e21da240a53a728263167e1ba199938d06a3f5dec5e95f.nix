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
        name = "spritz";
        version = "0.1.0.0";
      };
      license = "BSD-2-Clause";
      copyright = "(C) 2014 Ricky Elrod";
      maintainer = "ricky@elrod.me";
      author = "Ricky Elrod";
      homepage = "https://github.com/relrod/spritz";
      url = "";
      synopsis = "An implementation of the Spritz RC4-like stream cipher in Haskell";
      description = "";
      buildType = "Simple";
    };
    components = {
      "spritz" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.vector)
        ];
      };
    };
  }