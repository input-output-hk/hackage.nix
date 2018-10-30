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
      specVersion = "1.10";
      identifier = {
        name = "fluid-idl-scotty";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Joe Vargas";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Scotty server add-on for Fluid";
      description = "Scotty server add-on for Fluid";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.fluid-idl)
          (hsPkgs.scotty)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.wai)
        ];
      };
    };
  }