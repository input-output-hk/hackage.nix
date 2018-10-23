{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "fluidsynth";
        version = "0.1.1.0";
      };
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
      "fluidsynth" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
          (hsPkgs.containers)
          (hsPkgs.directory)
        ];
        libs = [ (pkgs."fluidsynth") ];
      };
    };
  }