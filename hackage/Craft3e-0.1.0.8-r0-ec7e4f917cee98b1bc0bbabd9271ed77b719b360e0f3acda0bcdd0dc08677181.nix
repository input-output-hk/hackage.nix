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
      specVersion = "1.6";
      identifier = {
        name = "Craft3e";
        version = "0.1.0.8";
      };
      license = "MIT";
      copyright = "(c) Addison Wesley";
      maintainer = "Simon Thompson <s.j.thompson@kent.ac.uk>";
      author = "Simon Thompson";
      homepage = "http://www.haskellcraft.com/";
      url = "";
      synopsis = "Code for Haskell: the Craft of Functional Programming, 3rd ed.";
      description = "\nUse as follows:\n\n1. Download via: @cabal unpack Craft3e@\n\n2. Go to directory: @cd Craft3e-<version>@\n\n3. Install dependencies: @cabal install --disable-documentation@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.HUnit)
        ];
      };
      exes = {
        "performanceI" = {};
        "performanceIA" = {};
        "performanceIS" = {};
      };
    };
  }