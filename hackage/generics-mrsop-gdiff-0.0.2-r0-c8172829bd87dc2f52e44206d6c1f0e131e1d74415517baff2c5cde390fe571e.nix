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
      specVersion = "1.10";
      identifier = { name = "generics-mrsop-gdiff"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Victor Miraldo <v.cacciarimiraldo@gmail.com>";
      author = "Arian van Putten and Victor Miraldo";
      homepage = "https://github.com/VictorCMiraldo/generics-mrsop-gdiff#readme";
      url = "";
      synopsis = "Reimplementation of the gdiff algorithm for generics-mrsop";
      description = "Here we port the gdiff algorithm and library to work over the generics-mrsop, enabling code that relies on the later library to access the gdiff algorithm. Moreover, we also bring in the utilities for converting a gdiff patch into a more structured version, facilitating merging. For some literature on the topic check Arian's MSc thesis at <https://dspace.library.uu.nl/handle/1874/380853> or our TyDe 2017 paper at <https://victorcmiraldo.github.io/data/tyde2017.pdf>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."generics-mrsop" or (errorHandler.buildDepError "generics-mrsop"))
          ];
        buildable = true;
        };
      };
    }