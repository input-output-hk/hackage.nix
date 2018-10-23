{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "parsek";
        version = "1.0.1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Koen Claessen, Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "Parallel Parsing Processes";
      description = "Koen Claessen's PPP, Modified.";
      buildType = "Simple";
    };
    components = {
      "parsek" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }