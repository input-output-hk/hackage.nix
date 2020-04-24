{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "basic-prelude"; version = "0.4.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, Dan Burton";
      homepage = "https://github.com/snoyberg/basic-prelude";
      url = "";
      synopsis = "An enhanced core prelude; a common foundation for alternate preludes.";
      description = "The premise of @basic-prelude@ is that there are a lot of very commonly desired features missing from the standard @Prelude@, such as commonly used operators (@\\<\$\\>@ and @>=>@, for instance) and imports for common datatypes (e.g., @ByteString@ and @Vector@). At the same time, there are lots of other components which are more debatable, such as providing polymorphic versions of common functions.\n\nSo @basic-prelude@ is intended to give a common foundation for a number of alternate preludes. The package provides two modules: @CorePrelude@ provides the common ground for other preludes to build on top of, while @BasicPrelude@ exports @CorePrelude@ together with commonly used list functions to provide a drop-in replacement for the standard @Prelude@.\n\nUsers wishing to have an improved @Prelude@ can use @BasicPrelude@. Developers wishing to create a new prelude should use @CorePrelude@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."ReadArgs" or ((hsPkgs.pkgs-errors).buildDepError "ReadArgs"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          ];
        buildable = true;
        };
      };
    }