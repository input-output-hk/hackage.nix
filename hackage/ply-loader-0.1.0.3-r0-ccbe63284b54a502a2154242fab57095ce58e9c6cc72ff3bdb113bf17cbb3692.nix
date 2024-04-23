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
      identifier = { name = "ply-loader"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Anthony Cowley 2012";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "";
      url = "";
      synopsis = "PLY file loader.";
      description = "PLY is a lightweight file format for representing 3D\ngeometry. The library includes support for\nplacing mesh data into a consistent coordinate\nframe using Stanford's @.conf@ file format. See\n/The Stanford 3D Scanning Repository/\n<http://graphics.stanford.edu/data/3Dscanrep/>\nfor more information.\nThis package provides a library for loading PLY\ndata, and an executable, @ply2bin@, for dumping\nall vertex data referenced by a @.conf@ file to a\nflat binary file comprising an array of single\nprecision float triples. Usage: @ply2bin confFile\noutputFile@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
        ];
        buildable = true;
      };
      exes = {
        "ply2bin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."ply-loader" or (errorHandler.buildDepError "ply-loader"))
          ];
          buildable = true;
        };
      };
    };
  }