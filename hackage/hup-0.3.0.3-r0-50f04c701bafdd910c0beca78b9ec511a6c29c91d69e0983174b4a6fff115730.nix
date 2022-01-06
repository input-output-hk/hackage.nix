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
    flags = {
      enablewebtests = true;
      extraghcwarnings = true;
      buildstackbasedtests = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "hup"; version = "0.3.0.3"; };
      license = "BSD-2-Clause";
      copyright = "phlummox 2016-2021, others where indicated";
      maintainer = "phlummox2@gmail.com";
      author = "phlummox";
      homepage = "https://github.com/phlummox/hup";
      url = "";
      synopsis = "Upload packages and/or documentation to a hackage server";
      description = "Command-line application (plus an associated library) for uploading\nHaskell packages or documentation to a hackage server.\n\nSome sample command invocations:\n@/hup packbuild/@ builds a source distribution @.tgz@\nfile, ready for uploading; @/hup packup somefile.tgz/@\nuploads it to a hackage server (<https://hackage.haskell.org/>,\nby default); and @/hup packboth/@ combines both steps.\n\nFlags like @/[-c|--candidate]/@ allow you to upload a\ncandidate package instead.\n\nRequires that @stack@ (<https://www.haskellstack.org>) be installed.\n\nSee the README for further details\n(at <https://github.com/phlummox/hup#readme>)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
        buildable = true;
        };
      exes = {
        "hup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."hup" or (errorHandler.buildDepError "hup"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hup-spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec-wai" or (errorHandler.buildDepError "hspec-wai"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."hup" or (errorHandler.buildDepError "hup"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ] ++ (pkgs.lib).optionals (flags.enablewebtests) [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = true;
          };
        "hup-doctest" = {
          depends = (pkgs.lib).optionals (!(!flags.buildstackbasedtests)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hup" or (errorHandler.buildDepError "hup"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            ];
          buildable = if !flags.buildstackbasedtests then false else true;
          };
        };
      };
    }