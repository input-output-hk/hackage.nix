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
      specVersion = "2.2";
      identifier = { name = "ucl"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Francesco Gazzetta 2021";
      maintainer = "fgaz@fgaz.me";
      author = "Francesco Gazzetta";
      homepage = "https://sr.ht/~fgaz/haskell-ucl/";
      url = "";
      synopsis = "Datatype and parser for the Universal Configuration Language (UCL) using libucl";
      description = "The Universal Configuration Language (UCL) is a configuration language\ninspired by nginx configuration files and compatible with JSON.\nFor a complete description of the language, see [the libucl readme](https://github.com/vstakhov/libucl/blob/master/README.md).\n\nThis library contains a datatype representing UCL objects, and a parser.\nIt is based on the C library [libucl](https://github.com/vstakhov/libucl),\nwhich is needed to build this package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        pkgconfig = [
          (pkgconfPkgs."libucl" or (errorHandler.pkgConfDepError "libucl"))
        ];
        buildable = true;
      };
      tests = {
        "ucl-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ucl" or (errorHandler.buildDepError "ucl"))
          ];
          buildable = true;
        };
      };
    };
  }