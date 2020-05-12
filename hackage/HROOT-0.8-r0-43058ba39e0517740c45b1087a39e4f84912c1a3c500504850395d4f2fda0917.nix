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
      identifier = { name = "HROOT"; version = "0.8"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "http://ianwookim.org/HROOT";
      url = "";
      synopsis = "Haskell binding to ROOT RooFit modules";
      description = "HROOT is a haskell Foreign Function Interface (FFI) binding to ROOT. ROOT(http://root.cern.ch) is an object-oriented program and library developed by CERN for physics data analysis.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fficxx-runtime" or (errorHandler.buildDepError "fficxx-runtime"))
          (hsPkgs."HROOT-core" or (errorHandler.buildDepError "HROOT-core"))
          (hsPkgs."HROOT-graf" or (errorHandler.buildDepError "HROOT-graf"))
          (hsPkgs."HROOT-hist" or (errorHandler.buildDepError "HROOT-hist"))
          (hsPkgs."HROOT-math" or (errorHandler.buildDepError "HROOT-math"))
          (hsPkgs."HROOT-io" or (errorHandler.buildDepError "HROOT-io"))
          ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        buildable = true;
        };
      };
    }