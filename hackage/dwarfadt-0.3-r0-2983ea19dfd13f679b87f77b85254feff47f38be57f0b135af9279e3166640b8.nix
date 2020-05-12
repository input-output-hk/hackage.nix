{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "dwarfadt"; version = "0.3"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."elf" or (errorHandler.buildDepError "elf"))
          (hsPkgs."bytestring-mmap" or (errorHandler.buildDepError "bytestring-mmap"))
          (hsPkgs."dwarf-el" or (errorHandler.buildDepError "dwarf-el"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      exes = {
        "dumpdwarf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dwarfadt" or (errorHandler.buildDepError "dwarfadt"))
            (hsPkgs."dwarf-el" or (errorHandler.buildDepError "dwarf-el"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        "dumpadt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dwarfadt" or (errorHandler.buildDepError "dwarfadt"))
            (hsPkgs."dwarf-el" or (errorHandler.buildDepError "dwarf-el"))
            ];
          buildable = true;
          };
        };
      };
    }