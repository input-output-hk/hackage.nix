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
    flags = {
      profiling = false;
      debug = false;
      dynamic = false;
      threaded = false;
    };
    package = {
      specVersion = "3.12";
      identifier = { name = "libffi-clib"; version = "3.5.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "hasufell@posteo.de";
      author = "Julian Ospald";
      homepage = "";
      url = "";
      synopsis = "libffi clibs";
      description = "C source code for the libffi package";
      buildType = "Configure";
    };
    components = {
      "library" = { buildable = if system.isJavaScript then false else true; };
    };
  }