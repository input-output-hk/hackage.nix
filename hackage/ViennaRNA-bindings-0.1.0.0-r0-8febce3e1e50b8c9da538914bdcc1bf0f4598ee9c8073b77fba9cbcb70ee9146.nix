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
      specVersion = "1.8";
      identifier = { name = "ViennaRNA-bindings"; version = "0.1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "The ViennaRNA Team 1994-2013";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen (bindings) 2013, The ViennaRNA Team (library) 1994-2013";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "ViennaRNA v2 bindings";
      description = "Bindings to the ViennaRNA package, version 2.x.y.\n\nOnly a partial set of bindings is provided. If you need additional functions,\nplease open an issue on github.\n\nThe ViennaRNA bindings package now directly provide all necessary\nfunctionality. Please note that this package uses the same license as the\nViennaRNA package.\n\nIf you use this software, please cite:\nR. Lorenz, S.H. Bernhart, C. Hoener zu Siederdissen, H. Tafer, C. Flamm, P.F. Stadler and I.L. Hofacker (2011),\n\"ViennaRNA Package 2.0\", Algorithms for Molecular Biology: 6:26";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      };
    }