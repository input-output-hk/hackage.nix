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
        name = "cspretty";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ccasinghino@draper.com";
      author = "Draper Labs";
      homepage = "";
      url = "";
      synopsis = "AST and pretty printer for CSPm";
      description = "";
      buildType = "Simple";
    };
    components = {
      "cspretty" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pretty)
          (hsPkgs.containers)
        ];
      };
    };
  }