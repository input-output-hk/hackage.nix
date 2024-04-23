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
    flags = { base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "Shellac"; version = "0.9.5.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "robdockins AT fastmail DOT fm";
      author = "Robert Dockins";
      homepage = "http://rwd.rdockins.name/shellac/home/";
      url = "";
      synopsis = "A framework for creating shell envinronments";
      description = "Shellac is a framework for building read-eval-print style shells.\nShells are created by declaratively defining a set of shell commands\nand an evaluation function.  Shellac supports multiple shell backends,\nincluding a 'basic' backend which uses only Haskell IO primitives and\na full featured 'readline' backend based on the the Haskell readline\nbindings found in the standard libraries.\nThis library attempts to allow users to write shells at a high level\nand still enjoy the advanced features that may be available from a\npowerful line editing package like readline.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ] ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ]) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
      };
    };
  }