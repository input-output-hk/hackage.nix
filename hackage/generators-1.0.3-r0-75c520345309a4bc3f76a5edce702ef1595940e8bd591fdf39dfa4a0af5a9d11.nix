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
      specVersion = "1.2";
      identifier = {
        name = "generators";
        version = "1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor-Davis";
      homepage = "http://liamoc.net/pdf/Generator.pdf";
      url = "";
      synopsis = "Actually useful monadic random value generators.";
      description = "A nice wrapping around System.Random. Full documentation is available in Literate Haskell at the homepage link.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.mtl)
          (hsPkgs.random)
        ];
      };
    };
  }