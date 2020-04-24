{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      safe-foreign-calls = false;
      vma-ndebug = false;
      vma-recording = false;
      };
    package = {
      specVersion = "2.2";
      identifier = { name = "VulkanMemoryAllocator"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Joe Hermaszewski <live.long.and.prosper@monoid.al>";
      author = "";
      homepage = "https://github.com/expipiplus1/vulkan#readme";
      url = "";
      synopsis = "Bindings to the VulkanMemoryAllocator library";
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
          (hsPkgs."vulkan" or ((hsPkgs.pkgs-errors).buildDepError "vulkan"))
          ];
        libs = [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ];
        buildable = true;
        };
      };
    }