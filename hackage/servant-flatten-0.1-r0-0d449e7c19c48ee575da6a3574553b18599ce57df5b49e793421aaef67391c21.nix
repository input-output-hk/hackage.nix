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
        name = "servant-flatten";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Alp Mestanogullari, Julian Arni";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari";
      homepage = "https://github.com/alpmestan/servant-flatten";
      url = "";
      synopsis = "Utilities for flattening servant API types";
      description = "Utilities for flattening servant API types\n\nSee the documentation of @'Servant.API.Flatten.flatten'@.";
      buildType = "Simple";
    };
    components = {
      "servant-flatten" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.servant)
        ];
      };
    };
  }