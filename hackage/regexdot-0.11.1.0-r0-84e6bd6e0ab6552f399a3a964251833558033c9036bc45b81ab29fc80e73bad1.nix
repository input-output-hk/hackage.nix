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
    flags = { havedeepseq = true; llvm = false; threaded = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "regexdot"; version = "0.11.1.0"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2010 Dr. Alistair Ward";
      maintainer = "regexdot <at> functionalley <dot> eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu";
      url = "";
      synopsis = "A polymorphic, POSIX, extended regex-engine.";
      description = "Provides a portable, POSIX, extended regex-engine, designed to process a list of /arbitrary/ objects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."toolshed" or (errorHandler.buildDepError "toolshed"))
          ] ++ (if flags.havedeepseq
          then [ (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq")) ]
          else [
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            ])) ++ [
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          ];
        buildable = true;
        };
      };
    }