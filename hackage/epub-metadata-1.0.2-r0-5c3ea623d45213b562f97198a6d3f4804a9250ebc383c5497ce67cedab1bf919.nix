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
      specVersion = "1.2";
      identifier = { name = "epub-metadata"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2010 Dino Morelli";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli";
      homepage = "http://ui3.info/d/proj/epub-metadata.html";
      url = "";
      synopsis = "Library and utility for parsing and manipulating\nePub metadata";
      description = "Library for parsing and manipulating ePub OPF\nmetadata. An attempt has been made here to very\nthoroughly implement the metadata portion of the OPF\nPackage Document specification. Also included is a\ncommand-line utility to dump ePub metadata to stdout\nin a human-readable form.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HSH" or (errorHandler.buildDepError "HSH"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      exes = {
        "epub-meta" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }