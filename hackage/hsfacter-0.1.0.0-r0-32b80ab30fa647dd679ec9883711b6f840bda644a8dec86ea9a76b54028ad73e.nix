{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hsfacter"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "simon@banquise.net";
      author = "Simon Marechal";
      homepage = "";
      url = "";
      synopsis = "A small and ugly library that emulates the output of the puppet facter program. Mainly used in conjunction with language-puppet.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      };
    }