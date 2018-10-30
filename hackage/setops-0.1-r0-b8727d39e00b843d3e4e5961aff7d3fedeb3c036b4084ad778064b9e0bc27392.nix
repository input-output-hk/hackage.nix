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
        name = "setops";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Eelis <eelis@eelis.net>";
      author = "Eelis <eelis@eelis.net>";
      homepage = "";
      url = "";
      synopsis = "Uniform names (and Unicode operators) for set operations on data structures.";
      description = "Uniform names (and Unicode operators) for set operations on data structures.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }