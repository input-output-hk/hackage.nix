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
      opengl2 = false;
      opengl3 = true;
      vulkan = false;
      sdl = true;
      glfw = false;
      examples = false;
    };
    package = {
      specVersion = "3.0";
      identifier = { name = "dear-imgui"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ollie@ocharles.org.uk, aenor.realm@gmail.com";
      author = "Oliver Charles";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for Dear ImGui.";
      description = "The package supports multiple rendering backends.\nSet package flags according to your needs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dear-imgui".components.sublibs.dear-imgui-generator or (errorHandler.buildDepError "dear-imgui:dear-imgui-generator"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."managed" or (errorHandler.buildDepError "managed"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."inline-c-cpp" or (errorHandler.buildDepError "inline-c-cpp"))
          (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
        ] ++ pkgs.lib.optional (flags.opengl2) (hsPkgs."gl" or (errorHandler.buildDepError "gl"))) ++ pkgs.lib.optionals (flags.vulkan) [
          (hsPkgs."vulkan" or (errorHandler.buildDepError "vulkan"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
        ]) ++ pkgs.lib.optional (flags.sdl) (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))) ++ pkgs.lib.optional (flags.glfw) (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"));
        libs = ([
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
        ] ++ pkgs.lib.optionals (flags.vulkan) (if system.isWindows
          then [ (pkgs."vulkan-1" or (errorHandler.sysDepError "vulkan-1")) ]
          else pkgs.lib.optional (system.isOsx) (pkgs."vulkan" or (errorHandler.sysDepError "vulkan")))) ++ pkgs.lib.optionals (flags.sdl) (pkgs.lib.optional (system.isWindows || system.isOsx) (pkgs."SDL2" or (errorHandler.sysDepError "SDL2")));
        pkgconfig = ((pkgs.lib.optional (flags.opengl3) (pkgconfPkgs."glew" or (errorHandler.pkgConfDepError "glew")) ++ pkgs.lib.optionals (flags.vulkan) (pkgs.lib.optionals (!system.isWindows) (pkgs.lib.optional (!system.isOsx) (pkgconfPkgs."vulkan" or (errorHandler.pkgConfDepError "vulkan"))))) ++ pkgs.lib.optionals (flags.sdl) (pkgs.lib.optional (!(system.isWindows || system.isOsx)) (pkgconfPkgs."sdl2" or (errorHandler.pkgConfDepError "sdl2")))) ++ pkgs.lib.optionals (flags.glfw) (pkgs.lib.optional (system.isLinux || system.isOsx) (pkgconfPkgs."glfw3" or (errorHandler.pkgConfDepError "glfw3")));
        buildable = true;
      };
      sublibs = {
        "dear-imgui-generator" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
      };
      exes = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optionals (!(!flags.examples || !flags.sdl || !flags.opengl2)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."gl" or (errorHandler.buildDepError "gl"))
            (hsPkgs."dear-imgui" or (errorHandler.buildDepError "dear-imgui"))
          ];
          buildable = if !flags.examples || !flags.sdl || !flags.opengl2
            then false
            else true;
        };
        "glfw" = {
          depends = pkgs.lib.optionals (!(!flags.examples || !flags.glfw || !flags.opengl2)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."gl" or (errorHandler.buildDepError "gl"))
            (hsPkgs."dear-imgui" or (errorHandler.buildDepError "dear-imgui"))
            (hsPkgs."managed" or (errorHandler.buildDepError "managed"))
          ];
          buildable = if !flags.examples || !flags.glfw || !flags.opengl2
            then false
            else true;
        };
        "readme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."gl" or (errorHandler.buildDepError "gl"))
            (hsPkgs."dear-imgui" or (errorHandler.buildDepError "dear-imgui"))
            (hsPkgs."managed" or (errorHandler.buildDepError "managed"))
          ];
          buildable = if !flags.examples || !flags.sdl || !flags.opengl2
            then false
            else true;
        };
        "vulkan" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optionals (!(!flags.examples || !flags.sdl || !flags.vulkan)) [
            (hsPkgs."dear-imgui" or (errorHandler.buildDepError "dear-imgui"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vulkan" or (errorHandler.buildDepError "vulkan"))
            (hsPkgs."vulkan-utils" or (errorHandler.buildDepError "vulkan-utils"))
          ];
          buildable = if !flags.examples || !flags.sdl || !flags.vulkan
            then false
            else true;
        };
      };
    };
  }