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
      identifier = { name = "processor-creative-kit"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Takenobu Tani";
      maintainer = "takenobu.hs@gmail.com";
      author = "Takenobu Tani";
      homepage = "https://github.com/takenobu-hs/processor-creative-kit";
      url = "";
      synopsis = "a creation kit for instruction sets and cpu simulators and development tools";
      description = "You can create your processors with your own instruction set and cpu simulator and development tools.\n\nFeature:\n\n- easy try, easy modify\n\n- a purely functional CPU core (without IO)  (you can embed it anywhere)\n\n- including a very simple prototype assembler\n\n- including a very simple prototype debugger\n\n- including a very simple prototype profiler";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
    };
  }