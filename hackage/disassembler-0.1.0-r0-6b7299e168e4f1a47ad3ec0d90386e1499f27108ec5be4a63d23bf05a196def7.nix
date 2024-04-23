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
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "disassembler"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Martin Grabmueller <martin.grabmueller@eleven.de>";
      author = "Martin Grabmueller <martin.grabmueller@eleven.de>, Dirk Kleeblatt <klee@cs.tu-berlin.de>";
      homepage = "";
      url = "";
      synopsis = "Disassembler for X86 & AMD64 machine code";
      description = "Disassembler for X86 & AMD64 machine code";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.split-base
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
      };
    };
  }