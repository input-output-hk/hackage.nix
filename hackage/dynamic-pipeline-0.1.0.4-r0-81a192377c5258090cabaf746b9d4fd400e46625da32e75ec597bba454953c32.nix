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
      specVersion = "1.12";
      identifier = { name = "dynamic-pipeline"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2021 Juan Pablo Royo Sales";
      maintainer = "juanpablo.royo@gmail.com";
      author = "Juan Pablo Royo Sales";
      homepage = "https://github.com/jproyo/dynamic-pipeline#readme";
      url = "";
      synopsis = "Library Type Safe implementation of Dynamic Pipeline Paradigm (DPP).";
      description = "@dynamic-pipeline@ is a __/Type Safe/__ Dynamic and Parallel Streaming Library, which is an implementation of __Dynamic Pipeline Paradigm (DPP)__\nproposed in this paper [DPP](https://biblioteca.sistedes.es/articulo/the-dynamic-pipeline-paradigm/).\n\nThe aim of this tool is to provide all the __Type level__ constructs to guide the user in building a /DPP/ flow to solve any algorithm that fits on\nthis computational model.\n\nThe idea behind the implementation is similar to other __Type level__ programming libraries like [@servant@](https://hackage.haskell.org/package/servant)\n\nSome of the feature of this library includes:\n\n* /Small Number of Dependencies/: Dependencies have been kept to minimum in order to reduce compilation time.\n\n* /Type Level Encoding/: As it was explained before, there is an intensive use of Type Level techniques in the Library in order to guide the user in\ndefining the Flow Model and fill the gaps with the combinators provided and the Compiler indications. On the other hand some /Type Custom Errors/ have been\nencoded in the Library in order to provide meaningful messages about the Data Flow Grammar Defined in /DPP/.\n\n* /Stream Parallelization/: __DPP__ model follows a /Parallelization Pipeline/ approach with the use of intermediate Channels. All the burden have been hidden\nfor the user in order to reduce complexity and focus on the algorithm problem implementations.\n\n* /Safe Scoped Execution/: Use of Existential to define the Scope execution of /DPP/ reducing even more the complexity to the user.\n\nImport \"DynamicPipeline\" for using the library.\n\n* /Examples/: <src/examples examples directory> in the package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HList" or (errorHandler.buildDepError "HList"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
          ];
        buildable = true;
        };
      exes = {
        "examples" = {
          depends = [
            (hsPkgs."HList" or (errorHandler.buildDepError "HList"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."dynamic-pipeline" or (errorHandler.buildDepError "dynamic-pipeline"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
            (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
            ];
          buildable = true;
          };
        };
      tests = {
        "conn-comp-tests" = {
          depends = [
            (hsPkgs."HList" or (errorHandler.buildDepError "HList"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."dynamic-pipeline" or (errorHandler.buildDepError "dynamic-pipeline"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }