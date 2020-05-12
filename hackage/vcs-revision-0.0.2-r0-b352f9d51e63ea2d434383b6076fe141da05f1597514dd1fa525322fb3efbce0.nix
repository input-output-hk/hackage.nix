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
      specVersion = "1.6";
      identifier = { name = "vcs-revision"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Eugene Kirpichov";
      maintainer = "ekirpichov@gmail.com    ";
      author = "Eugene Kirpichov";
      homepage = "";
      url = "";
      synopsis = "Facilities for accessing the version control revision of the current directory.";
      description = "Facilities for accessing the version control revision of the current directory.\nUseful e.g. to make your program output its revision using Template Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }