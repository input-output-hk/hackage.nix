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
      identifier = { name = "ViennaRNA-bindings"; version = "0.0.3.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "The ViennaRNA Team 1994-2013";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen (bindings) 2013, The ViennaRNA Team (library) 1994-2013";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "ViennaRNA v2 bindings";
      description = "Bindings to the ViennaRNA package, version 2.x.y.\n\nOnly a partial set of bindings is provided. If you need additional functions,\nplease open an issue on github.\n\nThe ViennaRNA package needs to be installed. In addition, you should create a\nshared object from libRNA.a:\n\n@mkdir tmp; ar -x /usr/lib/libRNA.a; rm svm.o; gcc -shared *.o -o libRNA.so@\n\nThen, copy the resulting .so file into your library path or set\n@LD_LIBRARY_PATH@ appropriately. This is only necessary, if you want ghci\nsupport.\n\nIf you use this software, please cite:\nR. Lorenz, S.H. Bernhart, C. Hoener zu Siederdissen, H. Tafer, C. Flamm, P.F. Stadler and I.L. Hofacker (2011),\n\"ViennaRNA Package 2.0\", Algorithms for Molecular Biology: 6:26";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        libs = [
          (pkgs."RNA" or (errorHandler.sysDepError "RNA"))
          (pkgs."gomp" or (errorHandler.sysDepError "gomp"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }