{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "potato-tool"; version = "0.1.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "rossmeikleham@hotmail.co.uk";
      author = "RossMeikleham";
      homepage = "https://github.com/RossMeikleham/Potato_Tool";
      url = "";
      synopsis = "A Portable command line toolset written in Haskell for interacting with the Dreamcast Virtual Memory Unit filesystem.\nNamed after the 8-bit Sanyo LC8670 Potato CPU contained in the VMU.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "potato-tool" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.split)
            (hsPkgs.bytestring)
            ];
          };
        };
      };
    }