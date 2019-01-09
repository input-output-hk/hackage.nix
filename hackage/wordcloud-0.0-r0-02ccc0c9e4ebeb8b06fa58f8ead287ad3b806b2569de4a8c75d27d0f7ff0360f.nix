{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bytestring-in-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "wordcloud"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Library for generating word/tag clouds.";
      description = "Library for generating word/tag cloud images from histograms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.gd)
          (hsPkgs.bytestring)
          (hsPkgs.random)
          (hsPkgs.data-default)
          ];
        };
      };
    }