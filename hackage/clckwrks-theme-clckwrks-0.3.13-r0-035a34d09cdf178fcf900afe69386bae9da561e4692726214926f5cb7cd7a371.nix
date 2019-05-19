{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "clckwrks-theme-clckwrks"; version = "0.3.13"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
      author = "Jeremy Shaw";
      homepage = "http://www.clckwrks.com/";
      url = "";
      synopsis = "simple bootstrap based template for clckwrks";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.clckwrks)
          (hsPkgs.containers)
          (hsPkgs.hsp)
          (hsPkgs.text)
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsx2hs or (pkgs.buildPackages.hsx2hs))
          ];
        };
      };
    }