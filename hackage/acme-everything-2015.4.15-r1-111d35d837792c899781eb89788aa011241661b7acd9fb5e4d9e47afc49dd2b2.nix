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
      identifier = { name = "acme-everything"; version = "2015.4.15"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "David Luposchainsky <dluposchainsky(λ)gmail.com>";
      author = "David Luposchainsky";
      homepage = "";
      url = "";
      synopsis = "Everything.";
      description = "Install some packages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."3d-graphics-examples" or (errorHandler.buildDepError "3d-graphics-examples"))
          (hsPkgs."3dmodels" or (errorHandler.buildDepError "3dmodels"))
          (hsPkgs."4Blocks" or (errorHandler.buildDepError "4Blocks"))
          (hsPkgs."ABList" or (errorHandler.buildDepError "ABList"))
          (hsPkgs."AC-Angle" or (errorHandler.buildDepError "AC-Angle"))
          (hsPkgs."AC-Boolean" or (errorHandler.buildDepError "AC-Boolean"))
          (hsPkgs."AC-BuildPlatform" or (errorHandler.buildDepError "AC-BuildPlatform"))
          (hsPkgs."AC-Colour" or (errorHandler.buildDepError "AC-Colour"))
          (hsPkgs."AC-EasyRaster-GTK" or (errorHandler.buildDepError "AC-EasyRaster-GTK"))
          (hsPkgs."AC-HalfInteger" or (errorHandler.buildDepError "AC-HalfInteger"))
          ];
        buildable = true;
        };
      };
    }