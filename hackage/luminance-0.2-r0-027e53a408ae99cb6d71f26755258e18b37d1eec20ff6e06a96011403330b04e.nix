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
    flags = { debug-gl = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "luminance"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Dimitri Sabadie";
      maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      homepage = "https://github.com/phaazon/luminance";
      url = "";
      synopsis = "Type-safe, dependently-typed and stateless graphics framework";
      description = "This package exposes several modules to work with /GPUs/ in a stateless and\ntype-safe way. Currently, it uses __OpenGL__ as backend hardware technology but\nothers will be added later on, such as __Vulkan__.\n\nThe initial unstable version is /0.1/. Consider everything in that version as\npart of an experiment, even though the library should be free of bugs. If you\nfind any, please report an issue. If you think something could be enhanced,\nfeel free to fill in an issue as well.\n\nOne very important point is the fact that __luminance__ has nothing to do with\n/3D engines/ or /scene development kits/. Don’t expect to find /materials/,\n/lights/ or /mesh/ loaders. It’s just a graphics framework initiated to fix the\ndesign choices of __OpenGL__. It won’t change in any other way.\n\n__luminance__ is a small yet powerful graphics API. It was designed so that\npeople can quickly get their feet wet and start having fun with graphics in\n/Haskell/. The main idea is to unleash the graphical and visual properties of\n/GPUs/ in a stateless and type-safe way.\n\nThis library doesn’t expose any architectural patterns or designs. It’s up to\nyou to design your program as you want and following your own plans.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."gl" or (errorHandler.buildDepError "gl"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
        ];
        buildable = true;
      };
    };
  }