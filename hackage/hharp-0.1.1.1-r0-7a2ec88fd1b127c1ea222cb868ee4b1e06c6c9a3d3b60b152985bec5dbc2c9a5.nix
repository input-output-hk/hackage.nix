{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hharp"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tho.feron@gmail.com";
      author = "Thomas Feron";
      homepage = "http://www.harphttp.org";
      url = "";
      synopsis = "Binding to libharp";
      description = "Binding to the library libharp managing configurations for Harp (HTTP reverse proxy).";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; libs = [ (pkgs."harp") ]; };
      };
    }