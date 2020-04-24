{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-examples = false; safe-foreign-calls = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "vulkan"; version = "3.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Joe Hermaszewski <live.long.and.prosper@monoid.al>";
      author = "";
      homepage = "https://github.com/expipiplus1/vulkan#readme";
      url = "";
      synopsis = "Bindings to the Vulkan graphics API.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-sized" or ((hsPkgs.pkgs-errors).buildDepError "vector-sized"))
          ];
        libs = if system.isWindows
          then [
            (pkgs."vulkan-1" or ((hsPkgs.pkgs-errors).sysDepError "vulkan-1"))
            ]
          else [
            (pkgs."vulkan" or ((hsPkgs.pkgs-errors).sysDepError "vulkan"))
            ];
        buildable = true;
        };
      exes = {
        "info" = {
          depends = (pkgs.lib).optionals (flags.build-examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pretty-simple" or ((hsPkgs.pkgs-errors).buildDepError "pretty-simple"))
            (hsPkgs."vulkan" or ((hsPkgs.pkgs-errors).buildDepError "vulkan"))
            ];
          buildable = if flags.build-examples then true else false;
          };
        "sdl-triangle" = {
          depends = (pkgs.lib).optionals (flags.build-examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
            (hsPkgs."managed" or ((hsPkgs.pkgs-errors).buildDepError "managed"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."say" or ((hsPkgs.pkgs-errors).buildDepError "say"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."vulkan" or ((hsPkgs.pkgs-errors).buildDepError "vulkan"))
            ];
          buildable = if flags.build-examples then true else false;
          };
        };
      };
    }