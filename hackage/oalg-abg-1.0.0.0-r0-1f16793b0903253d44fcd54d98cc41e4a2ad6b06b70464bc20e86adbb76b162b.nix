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
      identifier = { name = "oalg-abg"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Erich Gut";
      maintainer = "zerich.gut@gmail.com";
      author = "Erich.Gut";
      homepage = "https://github.com/zErichGut/oalg-abg#readme";
      url = "";
      synopsis = "Finitely generated abelian groups.";
      description = "Representing __finitely generated abelian groups__ (\"OAlg.AbelianGroup.Definition\") as finite products of __cyclic groups__ (\"OAlg.AbelianGroup.ZMod\") and additive homomorphisms between finitely generated abelian groups as matrices of additive homomorphisms between cyclic groups.\n\n__Kernels__ and __Cokernels__ (\"OAlg.AbelianGroup.KernelsAndCokernels\") for additive homomorphisms between finitely generated abelian groups are provided by reducing Z-matrices to Smith Normal Form (\"OAlg.AbelianGroup.Free.SmithNormalForm\").\n\nPlease see the README on GitHub at <https://github.com/zErichGut/oalg-abg#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."oalg-base" or (errorHandler.buildDepError "oalg-base"))
        ];
        buildable = true;
      };
      tests = {
        "oalg-abg-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."oalg-abg" or (errorHandler.buildDepError "oalg-abg"))
            (hsPkgs."oalg-base" or (errorHandler.buildDepError "oalg-base"))
          ];
          buildable = true;
        };
      };
    };
  }