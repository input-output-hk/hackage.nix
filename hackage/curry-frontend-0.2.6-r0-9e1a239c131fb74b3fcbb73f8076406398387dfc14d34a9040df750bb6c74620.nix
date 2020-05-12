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
      identifier = { name = "curry-frontend"; version = "0.2.6"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Holger Siegel";
      author = "Wolfgang Lux, Martin Engelke, Bernd Brassel, Holger Siegel";
      homepage = "http://curry-language.org";
      url = "";
      synopsis = "Compile the functional logic language Curry to several intermediate formats";
      description = "The Curry Frontend consists of the executable program \"cymake\".\nIt is used by various backends to compile Curry programs to\nan internal representation.\nThe code is a stripped-down version of an early version of\nthe Muenster Curry Compiler\n(<http://danae.uni-muenster.de/~lux/curry/>)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "cymake" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."curry-base" or (errorHandler.buildDepError "curry-base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }