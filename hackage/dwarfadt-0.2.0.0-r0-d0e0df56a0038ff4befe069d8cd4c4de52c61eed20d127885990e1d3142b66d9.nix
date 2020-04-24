{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "dwarfadt"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eyal.lotem@gmail.com";
      author = "Eyal Lotem";
      homepage = "";
      url = "";
      synopsis = "High-level wrapper around the dwarf library";
      description = "dwarf is an excellent library to read dwarf files, but the output of\nparsing dwarf is very low-level and difficult to work with.\n\nThis library intends to wrap dwarf and return a simple ADT representing\nthe DWARF information in a high-level way, easy to work with.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."elf" or ((hsPkgs.pkgs-errors).buildDepError "elf"))
          (hsPkgs."bytestring-mmap" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-mmap"))
          (hsPkgs."dwarf-el" or ((hsPkgs.pkgs-errors).buildDepError "dwarf-el"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          ];
        buildable = true;
        };
      exes = {
        "dumpdwarf" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dwarfadt" or ((hsPkgs.pkgs-errors).buildDepError "dwarfadt"))
            (hsPkgs."dwarf-el" or ((hsPkgs.pkgs-errors).buildDepError "dwarf-el"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        "dumpadt" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dwarfadt" or ((hsPkgs.pkgs-errors).buildDepError "dwarfadt"))
            (hsPkgs."dwarf-el" or ((hsPkgs.pkgs-errors).buildDepError "dwarf-el"))
            ];
          buildable = true;
          };
        };
      };
    }