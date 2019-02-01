{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "webpage"; version = "0.0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "";
      homepage = "https://github.com/athanclark/webpage#readme";
      url = "";
      synopsis = "Organized and simple web page scaffold for blaze and lucid";
      description = "Please see the README on Github at <https://github.com/athanclark/webpage#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.data-default)
          (hsPkgs.lucid)
          (hsPkgs.text)
          ];
        };
      };
    }