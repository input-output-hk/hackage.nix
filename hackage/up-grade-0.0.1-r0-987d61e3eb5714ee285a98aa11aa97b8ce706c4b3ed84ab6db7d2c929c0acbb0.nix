{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "up-grade"; version = "0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "penzin-dev@gmail.com";
      author = "Petr Penzin";
      homepage = "http://github.com/ppenzin/up/";
      url = "";
      synopsis = "Software management tool";
      description = "A tool to manage upgrading of ports on a FreeBSD machine";
      buildType = "Simple";
      };
    components = {
      exes = {
        "up" = {
          depends = [ (hsPkgs.base) (hsPkgs.process) (hsPkgs.ports-tools) ];
          };
        };
      };
    }