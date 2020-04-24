{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "interprocess"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Artem Chirkin";
      maintainer = "chirkin@arch.ethz.ch";
      author = "Artem Chirkin";
      homepage = "https://github.com/achirkin/interprocess";
      url = "";
      synopsis = "Shared memory and control structures for IPC";
      description = "Provides portable shared memory allocator and semaphores.\nCan be used for interprocess communication.\nRefer to README.md for further information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "interprocess-concurrent-malloc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."typed-process" or ((hsPkgs.pkgs-errors).buildDepError "typed-process"))
            (hsPkgs."interprocess" or ((hsPkgs.pkgs-errors).buildDepError "interprocess"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "interprocess-wait-qsem" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."typed-process" or ((hsPkgs.pkgs-errors).buildDepError "typed-process"))
            (hsPkgs."interprocess" or ((hsPkgs.pkgs-errors).buildDepError "interprocess"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      };
    }