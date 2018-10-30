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
      specVersion = "1.18";
      identifier = {
        name = "colour-accelerate";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) [2016]. Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell";
      homepage = "https://github.com/tmcdonell/colour-accelerate";
      url = "";
      synopsis = "Working with colours in Accelerate";
      description = "This package provides data types for colours and transparency for use with\nAccelerate. For further information refer to the main /Accelerate/ package:\n<http://hackage.haskell.org/package/accelerate>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.accelerate)
        ];
      };
    };
  }