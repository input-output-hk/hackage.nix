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
      specVersion = "1.6";
      identifier = { name = "hmumps"; version = "0.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "2007, 2009-2010 Antoine Latter";
      maintainer = "aslatter@gmail.com";
      author = "Antoine Latter";
      homepage = "";
      url = "";
      synopsis = "Interpreter for the MUMPS langugae";
      description = "Partial interpreter for the MUMPS language.\nAs this isn't nearly complete, it is mostly useful\nfor educational purposes and exploring how the interpreter\nis constructed.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hmumps" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }