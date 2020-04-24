{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "potato-tool"; version = "0.1.0.2"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "rossmeikleham@hotmail.co.uk";
      author = "RossMeikleham";
      homepage = "https://github.com/RossMeikleham/Potato_Tool";
      url = "";
      synopsis = "Command line Dreamcast VMU filesystem toolset.";
      description = "A Portable command line toolset written in Haskell for interacting with the Dreamcast Virtual Memory Unit filesystem.\nNamed after the 8-bit Sanyo LC8670 Potato CPU contained in the VMU. It allows for injecting, extracing, removing, and\nviewing files in a dreamcast VMU file.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "potato-tool" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }