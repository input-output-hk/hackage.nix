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
        name = "colorless-scotty";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Joe Vargas";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Scotty server add-on for Colorless";
      description = "Scotty server add-on for Colorless";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.colorless)
          (hsPkgs.scotty)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.wai)
        ];
      };
    };
  }