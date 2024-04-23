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
      specVersion = "1.4";
      identifier = { name = "ggtsTC"; version = "0.5"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2012 Wei Ke";
      maintainer = "wke@ipm.edu.mo";
      author = "Wei Ke";
      homepage = "http://a319-101.ipm.edu.mo/~wke/ggts/impl/";
      url = "";
      synopsis = "A type checker and runtime system of rCOS/g (impl. of ggts-FCS).";
      description = "A type checker and runtime system of rCOS/g\nfollowing the definitions in the /ggts-FCS/ article.\n\n* Title: A graph-based generic type system for object-oriented programs\n\n* Authors: Wei Ke, Zhiming Liu, Shuling Wang and Liang Zhao\n\n* Accepted by: Frontier of Computer Science\n\n* Year: 2012\n\nProgrammed by: Wei Ke\n\n(c) 2012 Wei Ke\n\nLicense:  GPL-3\n\nLicense file: <LICENSE>\n\nSource package download: <ggtsTC-0.5.tar.gz>\n\nrCOS/g grammar: <grammar>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "TC" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }