{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "linux-blkid"; version = "0.2.0.0"; };
      license = "LGPL-2.1-only";
      copyright = "© 2013 Nicola Squartini";
      maintainer = "Nicola Squartini <tensor5@gmail.com>";
      author = "Nicola Squartini";
      homepage = "";
      url = "";
      synopsis = "Linux libblkid";
      description = "Bindings to the Linux libblkid library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          ];
        pkgconfig = [
          (pkgconfPkgs."blkid" or ((hsPkgs.pkgs-errors).pkgConfDepError "blkid"))
          ];
        buildable = true;
        };
      };
    }