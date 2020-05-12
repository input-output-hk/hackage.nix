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
      identifier = { name = "final-pretty-printer"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2016-2017 David Darais, David Christiansen, and Weixi Ma";
      maintainer = "david@davidchristiansen.dk";
      author = "David Christiansen and David Darais and Weixi Ma";
      homepage = "";
      url = "";
      synopsis = "Extensible pretty printing with semantic annotations and proportional fonts";
      description = "This is the Final Pretty Printer, an extensible\nprettry printing library that supports semantic\nannotations and proportional-width fonts.\nThe library is extensible because it uses a\nfinal, rather than initial, encoding of pretty\nprinter documents - they are monadic programs,\nrather than a datatype.  This means it can be\nextended by monad transformers.\nSemantic annotations allow pretty printer\ndocuments to contain references to the data that\nthey represent, which can enable interactive output.\nProportional-width fonts are supported by\nallowing the measurement of widths to be\nperformed in some arbitrary monad, so IO can be\nused to look at the output of a font rendering library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ];
        buildable = true;
        };
      };
    }