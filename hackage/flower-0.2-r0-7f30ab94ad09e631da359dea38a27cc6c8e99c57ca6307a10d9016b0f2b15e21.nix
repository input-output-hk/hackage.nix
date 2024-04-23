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
      specVersion = "1.0";
      identifier = { name = "flower"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://malde.org/~ketil/biohaskell/flower";
      url = "";
      synopsis = "Analyze 454 flowgrams  (.SFF files)";
      description = "flower - The FLOWgram ExtracteR\n\nReads files in SFF-format and produces various output, including sequences\nwith quality, or flowgram data in tabular format.\n\nThe Darcs repository is at <http://malde.org/~ketil/biohaskell/flower>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "flower" = {
          depends = [
            (hsPkgs."bio" or (errorHandler.buildDepError "bio"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
          buildable = true;
        };
      };
    };
  }