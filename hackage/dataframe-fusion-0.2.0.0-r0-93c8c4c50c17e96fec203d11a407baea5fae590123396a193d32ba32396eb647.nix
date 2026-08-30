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
    flags = { no-csv = false; no-parquet = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "dataframe-fusion"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "(c) 2024-2026 Michael Chavinda";
      maintainer = "mschavinda@gmail.com";
      author = "Michael Chavinda";
      homepage = "";
      url = "";
      synopsis = "Apache DataFusion backend for the dataframe typed API.";
      description = "A typed, plan-based wrapper around Apache DataFusion. Mirrors\nthe DataFrame.Typed.Lazy surface but lowers each operation to\na DataFusion logical plan via a Rust bridge crate. Results are\nreturned via the Arrow C Data Interface and reconstructed as\nordinary TypedDataFrames in Haskell.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.pkgsBuildBuild.process or (pkgs.pkgsBuildBuild.process or (errorHandler.setupDepError "process")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
          (hsPkgs."dataframe-lazy" or (errorHandler.buildDepError "dataframe-lazy"))
          (hsPkgs."dataframe-operations" or (errorHandler.buildDepError "dataframe-operations"))
          (hsPkgs."dataframe-arrow-bridge" or (errorHandler.buildDepError "dataframe-arrow-bridge"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        libs = [
          (pkgs."dfusion_bridge" or (errorHandler.sysDepError "dfusion_bridge"))
          (pkgs."bz2" or (errorHandler.sysDepError "bz2"))
          (pkgs."lzma" or (errorHandler.sysDepError "lzma"))
          (pkgs."z" or (errorHandler.sysDepError "z"))
        ] ++ pkgs.lib.optional (system.isOsx) (pkgs."iconv" or (errorHandler.sysDepError "iconv"));
        buildable = if flags.no-csv || flags.no-parquet then false else true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
            (hsPkgs."dataframe-fusion" or (errorHandler.buildDepError "dataframe-fusion"))
            (hsPkgs."dataframe-operations" or (errorHandler.buildDepError "dataframe-operations"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          libs = [
            (pkgs."dfusion_bridge" or (errorHandler.sysDepError "dfusion_bridge"))
            (pkgs."bz2" or (errorHandler.sysDepError "bz2"))
            (pkgs."lzma" or (errorHandler.sysDepError "lzma"))
            (pkgs."z" or (errorHandler.sysDepError "z"))
          ] ++ pkgs.lib.optional (system.isOsx) (pkgs."iconv" or (errorHandler.sysDepError "iconv"));
          buildable = if flags.no-csv || flags.no-parquet then false else true;
        };
      };
    };
  }