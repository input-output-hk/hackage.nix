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
    flags = { flower = true; frecover = true; fclip = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "biosff"; version = "0.3.7.1"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "ketil@malde.org";
      author = "Ketil Malde";
      homepage = "http://biohaskell.org/";
      url = "";
      synopsis = "Library and executables for working with SFF files";
      description = "The library contains the functionality for reading and writing\nSFF files (sequencing data from 454 and Ion Torrent).  It duplicates\ncode from (and is incompatible with) the \"bio\" library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
      exes = {
        "flower" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = if flags.flower then true else false;
        };
        "frecover" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = if flags.frecover then true else false;
        };
        "fclip" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = if flags.fclip then true else false;
        };
      };
    };
  }