{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "staticanalysis";
        version = "0.0.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Andrei Lapets <lapets@bu.edu>";
      author = "Andrei Lapets";
      homepage = "";
      url = "";
      synopsis = "Reusable static analysis interfaces and modules.";
      description = "Reusable static analysis interfaces and modules.";
      buildType = "Simple";
    };
    components = {
      "staticanalysis" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.MissingH)
        ];
      };
    };
  }