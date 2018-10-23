{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "UtilityTM";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Tony Morris";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/tonymorris/utility-tm";
      url = "";
      synopsis = "Utility functions that are missing from the standard library";
      description = "Utility functions that are missing from the standard library";
      buildType = "Simple";
    };
    components = {
      "UtilityTM" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }