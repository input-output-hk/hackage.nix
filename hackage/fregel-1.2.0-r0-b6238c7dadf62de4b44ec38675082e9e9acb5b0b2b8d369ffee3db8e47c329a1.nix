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
      specVersion = "3.0";
      identifier = { name = "fregel"; version = "1.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "emoto@csn.kyutech.ac.jp, iwasaki@cs.meiji.ac.jp ";
      author = "Hideya Iwasaki, Kento Emoto, Akimasa Morihata, Kiminori Matsuzaki, Zhenjiang Hu";
      homepage = "https://ipl.cs.uec.ac.jp/~iwasaki/Fregel";
      url = "";
      synopsis = "A functional DSL for vertex-centric large-scale graph processing";
      description = "Fregel (Functional Pregel) is a functional domain-specific language for developing programs of vertex-centric (i.e., Pregel) style of big graph processing, in which the computation at every vertex is abstracted as a higher-order function. Fregel has clear functional semantics and supports declarative description of vertex computation. \n\nThe current Fregel processor is a translator (compiler) from Fregel code into Giraph code in Java / Pregel+ code in C++.\n\nTechnical details can be found in the JFP paper (DOI: https://doi.org/10.1017/S0956796821000277 ). \n\nNote that some optimization options need Z3, an SMT solver, to be installed in your system.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "fregel" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."groom" or (errorHandler.buildDepError "groom"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
            (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
          ];
          buildable = true;
        };
      };
    };
  }