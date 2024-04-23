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
      specVersion = "1.4";
      identifier = { name = "HGamer3D"; version = "0.6.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "Toolset for the Haskell Game Programmer";
      description = "HGamer3D is a toolset for developing 3D games in the programming\nlanguage Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
          (hsPkgs."messagepack" or (errorHandler.buildDepError "messagepack"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
        ];
        libs = if system.isWindows
          then [
            (pkgs."hgamer3d061" or (errorHandler.sysDepError "hgamer3d061"))
          ]
          else [
            (pkgs."hgamer3d061" or (errorHandler.sysDepError "hgamer3d061"))
            (pkgs."Urho3D" or (errorHandler.sysDepError "Urho3D"))
          ];
        buildable = true;
      };
    };
  }