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
      specVersion = "3.0";
      identifier = { name = "ghc-compat"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "2025 Lennart Augustsson, The University of Glasgow, 2008-2011";
      maintainer = "lennart@augustsson.net";
      author = "Lennart Augustsson";
      homepage = "";
      url = "";
      synopsis = "GHC compatibility for MicroHs";
      description = "This package contains a number of modules that are\npart of base in GHC.  The modules do not really belong\nin the MicroHs base library, but are used by some\npackages, e.g., os-string.\n.\nDo not use with GHC.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }