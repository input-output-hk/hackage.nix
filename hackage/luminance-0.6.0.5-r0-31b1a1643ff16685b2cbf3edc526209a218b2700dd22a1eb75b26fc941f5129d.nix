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
      identifier = { name = "luminance"; version = "0.6.0.5"; };
      license = "BSD-3-Clause";
      copyright = "Dimitri Sabadie";
      maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      homepage = "https://github.com/phaazon/luminance";
      url = "";
      synopsis = "Type-safe, type-level and stateless graphics framework";
      description = "This package exposes several modules to work with /GPUs/ in a stateless and\ntype-safe way. Currently, it uses OpenGL as backend hardware technology but\nothers will be added later on, such as Vulkan.\n\nOne very important point is the fact that luminance has nothing to do with\n/3D engines/ or /scene development kits/. Don’t expect to find /materials/,\n/lights/ or /mesh/ loaders. It’s just a graphics framework initiated to fix the\ndesign choices of OpenGL. It won’t change in any other way. However, as it\ngrows, the plan is to make luminance a good graphics framework following the\nHaskell philosophy. In the end, it should be used as-is, not as an OpenGL\nabstraction.\n\nluminance is a small yet powerful graphics API. It was designed so that\npeople can quickly get their feet wet and start having fun with graphics in\n/Haskell/. The main idea is to unleash the graphical and visual properties of\n/GPUs/ in a stateless and type-safe way.\n\nThis library doesn’t expose any architectural patterns or designs. It’s up to\nyou to design your program as you want and following your own plans.\n\nIn the end, as many people has asked me since the beginning of the development,\nthe OpenGL version – current is 4.5 – will be lowered. You’ll be able to choose\nthe backend to use through compilation flags.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."gl" or (errorHandler.buildDepError "gl"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
        ];
        buildable = true;
      };
    };
  }