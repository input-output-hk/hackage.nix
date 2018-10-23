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
        name = "aeson-generic-compat";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "";
      url = "";
      synopsis = "Compatible generic class names of Aeson";
      description = "This package includes compatible generic class names of Aeson package.";
      buildType = "Simple";
    };
    components = {
      "aeson-generic-compat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
        ];
      };
    };
  }