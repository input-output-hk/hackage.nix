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
      identifier = { name = "mars"; version = "0.1.0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "ch.howard@zoho.com";
      author = "Christopher Howard";
      homepage = "https://qlfiles.net";
      url = "";
      synopsis = "Generates mountainous terrain using a random walk algorithm.";
      description = "Provides functions for generating mountain-like terrain structure using a\nrandom walk algorithm. Inspired by Pickover's 1998 article \\\"Vacation\non Mars\\\". The data can be output as an ascii-format PLY file, or viewed\n\\\"overhead\\\" as an intensity graph. The PLY file can be loaded into a 3D\nmodeling program such as Blender.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          ];
        buildable = true;
        };
      };
    }