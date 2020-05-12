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
      specVersion = "1.8";
      identifier = { name = "xdg-userdirs"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "IlyaPortnov";
      homepage = "http://redmine.iportnov.ru/projects/xdg-userdirs";
      url = "";
      synopsis = "Basic implementation of XDG user directories specification";
      description = "On Unix platforms, this should be a very straightforward\nimplementation of the XDG User Directory spec. On Windows,\nit will attempt to do the right thing with regards to\nchoosing appropriate directories.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        buildable = true;
        };
      };
    }