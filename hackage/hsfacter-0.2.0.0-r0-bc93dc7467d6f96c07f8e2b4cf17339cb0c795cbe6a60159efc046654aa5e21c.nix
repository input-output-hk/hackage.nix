{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hsfacter";
        version = "0.2.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "simon@banquise.net";
      author = "Simon Marechal";
      homepage = "http://lpuppet.banquise.net";
      url = "";
      synopsis = "A small and ugly library that emulates the output of the puppet facter program.";
      description = "This is a reimplementation of the facter module used by Puppet, as a library. It is supposed to be used in conjunction with the language-puppet library in order to compute catalogs.";
      buildType = "Simple";
    };
    components = {
      "hsfacter" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.language-puppet)
        ];
      };
    };
  }