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
      identifier = { name = "Shrub"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2015 Rob O'Callahan";
      maintainer = "rcallahan@eurekagenomics.com";
      author = "Rob O'Callahan";
      homepage = "";
      url = "";
      synopsis = "4-way trie fuzzy search";
      description = "Nucleotide sequence approximate matching";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }