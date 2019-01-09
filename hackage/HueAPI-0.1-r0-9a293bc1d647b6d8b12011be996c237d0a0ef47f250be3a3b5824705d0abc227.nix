{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "HueAPI"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sjoerd@q42.nl";
      author = "Sjoerd Visscher";
      homepage = "https://github.com/sjoerdvisscher/HueAPI";
      url = "";
      synopsis = "API for controlling Philips Hue lights";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.utf8-string)
          (hsPkgs.http-conduit)
          (hsPkgs.network)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          ];
        };
      };
    }