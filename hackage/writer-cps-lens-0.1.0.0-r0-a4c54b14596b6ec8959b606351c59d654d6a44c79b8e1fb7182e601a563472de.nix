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
      identifier = { name = "writer-cps-lens"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan, Edward A. Kmett";
      homepage = "https://github.com/louispan/writer-cps-lens#readme";
      url = "";
      synopsis = "Lens instances for the stricter CPS WriterT and RWST";
      description = "Control.Lens Wrapped, Magnify and Zoomed instances for the stricter WriterT and RWST from writer-cps-transformers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."writer-cps-transformers" or (errorHandler.buildDepError "writer-cps-transformers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."writer-cps-mtl" or (errorHandler.buildDepError "writer-cps-mtl"))
          ];
        buildable = true;
        };
      };
    }