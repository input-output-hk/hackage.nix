{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "HSlippyMap"; version = "2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alex@xn--wxa.email";
      author = "Alexandre Peyroux";
      homepage = "https://github.com/apeyroux/HSlippyMap";
      url = "";
      synopsis = "OpenStreetMap Slippy Map";
      description = "OpenStreetMap Slippy Map algorithm";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }