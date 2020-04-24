{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; executable = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "vhd"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Citrix Systems Inc.";
      maintainer = "jonathan.knowles@eu.citrix.com";
      author = "Jonathan Knowles, Vincent Hanquez";
      homepage = "https://github.com/jonathanknowles/hs-vhd";
      url = "";
      synopsis = "Implementation of the Virtual Hard Disk (VHD) disk format";
      description = "Provide a toolbox of function to manipulate VHD files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mmap" or ((hsPkgs.pkgs-errors).buildDepError "mmap"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."storable-endian" or ((hsPkgs.pkgs-errors).buildDepError "storable-endian"))
          ];
        buildable = true;
        };
      exes = {
        "Tests" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = if flags.test then true else false;
          };
        "vhd" = {
          depends = (pkgs.lib).optional (flags.executable) (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"));
          buildable = if flags.executable then true else false;
          };
        };
      };
    }