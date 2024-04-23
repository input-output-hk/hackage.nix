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
      identifier = { name = "editline"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Judah Jacobson <judah.jacobson@gmail.com>";
      author = "";
      homepage = "http://code.haskell.org/editline";
      url = "";
      synopsis = "Bindings to the editline library (libedit).";
      description = "This package contains bindings to the BSD editline library\n(<http://www.thrysoee.dk/editline/>).\nIt provides a basic interface to the editline API for\nreading lines of input from the user.\n\nAdditionally, a readline compatibility module is included\nwhich provides a subset of the functions from the\nreadline package.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }