{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "grafana"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ethan Jones";
      author = "Ethan Jones";
      homepage = "";
      url = "";
      synopsis = "grafana datatypes for dashboards";
      description = "'grafana' provides datatypes that correspond to components of\ngrafana dashboards, and combinators for constructing dashboards.\nIt should be suitable for a UI that allows users to construct\ngrafana dashboards.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.text)
          ];
        };
      };
    }