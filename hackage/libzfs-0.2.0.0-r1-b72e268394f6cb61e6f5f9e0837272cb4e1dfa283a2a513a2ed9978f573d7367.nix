{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "libzfs"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "libzfs.hs@enumeration.eu";
      author = "Enum Cohrs";
      homepage = "";
      url = "";
      synopsis = "Bindings to libzfs, for dealing with the Z File System and Zpools.";
      description = "These are just some bindings to the real libzfs, written in C. Note that libzfs is licensed under the CDDL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        libs = [
          (pkgs."zfs" or ((hsPkgs.pkgs-errors).sysDepError "zfs"))
          (pkgs."nvpair" or ((hsPkgs.pkgs-errors).sysDepError "nvpair"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          libs = [
            (pkgs."zfs" or ((hsPkgs.pkgs-errors).sysDepError "zfs"))
            (pkgs."nvpair" or ((hsPkgs.pkgs-errors).sysDepError "nvpair"))
            ];
          buildable = true;
          };
        };
      };
    }