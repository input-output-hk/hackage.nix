{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "wai-router"; version = "1.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "mdmarek@gmail.com";
      author = "Marek Dolgos";
      homepage = "http://github.com/mdmarek/wai-router";
      url = "";
      synopsis = "Provides basic routing on URL paths for WAI.";
      description = "Simple routing based on a URL path pieces mapped to web applications.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.wai) (hsPkgs.text) ]; };
      };
    }