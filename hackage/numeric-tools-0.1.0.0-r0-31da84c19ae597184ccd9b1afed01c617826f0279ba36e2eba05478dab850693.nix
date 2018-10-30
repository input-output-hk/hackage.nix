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
        name = "numeric-tools";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "https://bitbucket.org/Shimuuar/numeric-tools";
      url = "";
      synopsis = "Collection of numerical tools for integration, differentiation etc.";
      description = "Package provides function to perform numeric integration and\ndifferentiation, function interpolation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ieee754)
          (hsPkgs.vector)
        ];
      };
    };
  }