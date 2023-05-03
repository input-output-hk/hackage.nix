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
    flags = { dump-core = false; streamly9 = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "Frames-streamly"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Adam Conner-Sax";
      maintainer = "adam_conner_sax@yahoo.com";
      author = "Adam Conner-Sax";
      homepage = "https://github.com/adamConnerSax/Frames-streamly#readme";
      url = "";
      synopsis = "A streamly layer for Frames I/O";
      description = "More information is available in the <https://github.com/adamConnerSax/Frames-streamly/blob/master/Readme.md readme>.'";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."fusion-plugin" or (errorHandler.buildDepError "fusion-plugin"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          (hsPkgs."pipes-text" or (errorHandler.buildDepError "pipes-text"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."readable" or (errorHandler.buildDepError "readable"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
          (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          ] ++ (if flags.streamly9
          then [
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
            (hsPkgs."streamly-bytestring" or (errorHandler.buildDepError "streamly-bytestring"))
            ]
          else [
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."streamly-bytestring" or (errorHandler.buildDepError "streamly-bytestring"))
            ]);
        buildable = true;
        };
      exes = {
        "Demo" = {
          depends = [
            (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
            (hsPkgs."Frames-streamly" or (errorHandler.buildDepError "Frames-streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."readable" or (errorHandler.buildDepError "readable"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            ];
          buildable = true;
          };
        };
      tests = {
        "FramesStreamlySpec" = {
          depends = [
            (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
            (hsPkgs."Frames-streamly" or (errorHandler.buildDepError "Frames-streamly"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-frames-streamly" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
            (hsPkgs."Frames-streamly" or (errorHandler.buildDepError "Frames-streamly"))
            (hsPkgs."fusion-plugin" or (errorHandler.buildDepError "fusion-plugin"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs."dump-core" or (errorHandler.buildDepError "dump-core"));
          buildable = true;
          };
        };
      };
    }