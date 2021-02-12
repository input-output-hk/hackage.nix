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
    flags = { bundled = false; demos = true; opengl = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "fltkhs"; version = "0.7.0.3"; };
      license = "MIT";
      copyright = "© 2017 Aditya Siram All Rights Reserved";
      maintainer = "aditya.siram@gmail.com";
      author = "Aditya Siram";
      homepage = "http://github.com/deech/fltkhs";
      url = "";
      synopsis = "FLTK bindings";
      description = "Low level bindings for the FLTK GUI toolkit. For installation and quick start instruction please scroll all the way down to the README.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ] ++ (pkgs.lib).optional (!system.isOsx && !system.isWindows) (hsPkgs.buildPackages.pkg-config.components.exes.pkg-config or (pkgs.buildPackages.pkg-config or (errorHandler.buildToolDepError "pkg-config:pkg-config")));
        buildable = true;
        };
      exes = {
        "fltkhs-fluidtohs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        "fltkhs-buttons" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "fltkhs-example-opengl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
            ];
          buildable = if !(flags.demos && flags.opengl) then false else true;
          };
        };
      };
    }