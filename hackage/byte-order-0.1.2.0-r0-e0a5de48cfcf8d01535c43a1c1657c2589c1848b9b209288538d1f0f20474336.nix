{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "byte-order"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/byte-order";
      url = "";
      synopsis = "Portable big-endian and little-endian conversions";
      description = "This library provides an interface to portably work with byte\narrays whose contents are known to be of a fixed endianness.\nThere are two ways to use this module. See the `System.ByteOrder`\nmodule for more documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."primitive-unaligned" or ((hsPkgs.pkgs-errors).buildDepError "primitive-unaligned"))
          ];
        buildable = true;
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."byte-order" or ((hsPkgs.pkgs-errors).buildDepError "byte-order"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            ];
          buildable = true;
          };
        };
      };
    }