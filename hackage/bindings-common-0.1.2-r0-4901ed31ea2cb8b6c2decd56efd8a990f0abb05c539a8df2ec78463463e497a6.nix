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
      identifier = { name = "bindings-common"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bindings";
      url = "";
      synopsis = "Low-level library bindings, base package.";
      description = "The @bindings-*@ set of packages contain low level bindings\nfor established libraries, and is aimed at developers of higher\nlevel modules that can use it as foundation. They all mimic the\nexact names and functionality of the original libraries. For\na specific library, look for package @bindings-library_name@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }