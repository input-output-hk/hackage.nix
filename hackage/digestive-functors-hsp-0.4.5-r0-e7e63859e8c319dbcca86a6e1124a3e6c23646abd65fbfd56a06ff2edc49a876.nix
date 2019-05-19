{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "digestive-functors-hsp"; version = "0.4.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://src.seereason.com/digestive-functors-hsp";
      url = "";
      synopsis = "HSP support for digestive-functors";
      description = "This is an HSP frontend for the digestive-functors library.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.digestive-functors)
          (hsPkgs.hsp)
          (hsPkgs.hsx)
          (hsPkgs.text)
          ];
        build-tools = (pkgs.lib).optional (!system.isWindows) (hsPkgs.buildPackages.trhsx or (pkgs.buildPackages.trhsx));
        };
      };
    }