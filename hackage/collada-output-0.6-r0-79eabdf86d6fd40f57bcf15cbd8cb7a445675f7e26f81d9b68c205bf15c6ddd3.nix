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
      specVersion = "1.6";
      identifier = { name = "collada-output"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tillk.vogt@googlemail.com";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "Generate animated 3d objects in COLLADA";
      description = "Generate a COLLADA file with textures, materials, animations, ... It can be used to visualize algorithms that produce a stream of positions, see <http://www.youtube.com/watch?v=ZpJzG28Yv8Y>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."SVGPath" or (errorHandler.buildDepError "SVGPath"))
          (hsPkgs."collada-types" or (errorHandler.buildDepError "collada-types"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = { "Examples" = { buildable = true; }; };
    };
  }