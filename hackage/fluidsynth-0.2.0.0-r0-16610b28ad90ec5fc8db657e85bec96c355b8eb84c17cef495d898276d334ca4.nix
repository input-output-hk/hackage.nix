{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "fluidsynth"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "cds@corbinsimpson.com";
      author = "Corbin Simpson";
      homepage = "https://github.com/MostAwesomeDude/hsfluidsynth";
      url = "";
      synopsis = "Haskell bindings to FluidSynth";
      description = "Simple Haskell bindings to FluidSynth.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          ];
        libs = [
          (pkgs."fluidsynth" or ((hsPkgs.pkgs-errors).sysDepError "fluidsynth"))
          ];
        buildable = true;
        };
      };
    }