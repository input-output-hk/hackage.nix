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
      specVersion = "1.10";
      identifier = { name = "units-defs"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Richard Eisenberg <eir@cis.upenn.edu>, Takayuki Muranushi <muranushi@gmail.com>";
      author = "Richard Eisenberg <eir@cis.upenn.edu>, Takayuki Muranushi <muranushi@gmail.com>";
      homepage = "http://github.com/goldfirere/units-defs";
      url = "";
      synopsis = "Definitions for use with the units package";
      description = "This package provides system definitions for use with the separate\n@units@ package. See the individual modules for details.\nUser contributions to this package are strongly encouraged. Please\nsubmit pull requests!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."units" or (errorHandler.buildDepError "units"))
        ];
        buildable = true;
      };
    };
  }