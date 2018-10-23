{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { boltzmann = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "generic-random";
        version = "0.5.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "http://github.com/lysxia/generic-random";
      url = "";
      synopsis = "Generic random generators";
      description = "Please see the README.\nNote: this package no longer exports Boltzmann samplers by default although they appear below.\n(\"Generic.Random.Data\", \"Generic.Random.Boltzmann\")";
      buildType = "Simple";
    };
    components = {
      "generic-random" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
        ] ++ pkgs.lib.optional (flags.boltzmann) (hsPkgs.boltzmann-samplers);
      };
    };
  }