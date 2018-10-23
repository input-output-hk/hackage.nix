{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "exinst-aeson";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2015-2016";
      maintainer = "renzoλcarbonara.com.ar";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/exinst";
      url = "";
      synopsis = "Derive instances for the `aeson` library for your existential types.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "exinst-aeson" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.exinst)
          (hsPkgs.singletons)
        ];
      };
    };
  }