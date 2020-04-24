{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "essence-of-live-coding-pulse";
        version = "0.1.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "programming@manuelbaerenz.de";
      author = "Manuel Bärenz";
      homepage = "https://www.manuelbaerenz.de/#computerscience";
      url = "";
      synopsis = "General purpose live coding framework - pulse backend";
      description = "essence-of-live-coding is a general purpose and type safe live coding framework.\n\nYou can run programs in it, and edit, recompile and reload them while they're running.\nInternally, the state of the live program is automatically migrated when performing hot code swap.\n\nThe library also offers an easy to use FRP interface.\nIt is parametrized by its side effects,\nseparates data flow cleanly from control flow,\nand allows to develop live programs from reusable, modular components.\nThere are also useful utilities for debugging and quickchecking.\n\nThis package contains the backend for PulseAudio.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."essence-of-live-coding" or ((hsPkgs.pkgs-errors).buildDepError "essence-of-live-coding"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."pulse-simple" or ((hsPkgs.pkgs-errors).buildDepError "pulse-simple"))
          (hsPkgs."foreign-store" or ((hsPkgs.pkgs-errors).buildDepError "foreign-store"))
          ];
        buildable = true;
        };
      };
    }