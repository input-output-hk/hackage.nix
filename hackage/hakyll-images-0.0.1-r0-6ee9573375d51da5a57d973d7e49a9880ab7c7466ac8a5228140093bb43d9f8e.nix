{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hakyll-images"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Laurent P. René de Cotret";
      author = "Laurent P. René de Cotret";
      homepage = "https://github.com/LaurentRDC/hakyll-images#readme";
      url = "";
      synopsis = "Hakyll utilities to work with images";
      description = "hakyll-images is an add-on to the hakyll package. It adds utilities to work with images, including JPEG compression.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.JuicyPixels)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hakyll)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.JuicyPixels)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hakyll)
            (hsPkgs.hakyll-images)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      };
    }