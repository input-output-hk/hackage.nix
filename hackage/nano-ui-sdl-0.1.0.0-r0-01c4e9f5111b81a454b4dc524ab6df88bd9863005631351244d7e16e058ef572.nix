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
    flags = { sdl = true; simd = false; };
    package = {
      specVersion = "3.4";
      identifier = { name = "nano-ui-sdl"; version = "0.1.0.0"; };
      license = "MIT AND OFL-1.1";
      copyright = "";
      maintainer = "zacharyachurchill@gmail.com";
      author = "goolord";
      homepage = "https://github.com/goolord/nano-ui";
      url = "";
      synopsis = "SDL3 window backend for nano-ui";
      description = "Runs nano-ui views in an SDL3 window with TrueType text and native file\ndialogs. Requires SDL3, SDL3_ttf, and pkg-config.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."dir-traverse" or (errorHandler.buildDepError "dir-traverse"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."nano-ui" or (errorHandler.buildDepError "nano-ui"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."record-hasfield" or (errorHandler.buildDepError "record-hasfield"))
          (hsPkgs."sdl3-bindgen-sys" or (errorHandler.buildDepError "sdl3-bindgen-sys"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        pkgconfig = pkgs.lib.optionals (flags.sdl) [
          (pkgconfPkgs."sdl3" or (errorHandler.pkgConfDepError "sdl3"))
          (pkgconfPkgs."sdl3-ttf" or (errorHandler.pkgConfDepError "sdl3-ttf"))
        ];
        buildable = if !flags.sdl then false else true;
      };
      exes = {
        "nano-ui-sdl-anim" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nano-ui" or (errorHandler.buildDepError "nano-ui"))
            (hsPkgs."nano-ui-sdl" or (errorHandler.buildDepError "nano-ui-sdl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if !flags.sdl then false else true;
        };
      };
      tests = {
        "nano-ui-font-search-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."dir-traverse" or (errorHandler.buildDepError "dir-traverse"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
        "nano-ui-font-effects-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nano-ui" or (errorHandler.buildDepError "nano-ui"))
            (hsPkgs."nano-ui-sdl" or (errorHandler.buildDepError "nano-ui-sdl"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if !flags.sdl then false else true;
        };
      };
      benchmarks = {
        "nano-ui-sdl-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nano-ui" or (errorHandler.buildDepError "nano-ui"))
            (hsPkgs."nano-ui-sdl" or (errorHandler.buildDepError "nano-ui-sdl"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
          buildable = if !flags.sdl then false else true;
        };
      };
    };
  }