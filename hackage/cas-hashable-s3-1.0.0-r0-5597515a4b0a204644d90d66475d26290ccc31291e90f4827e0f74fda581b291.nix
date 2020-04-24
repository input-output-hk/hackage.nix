{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cas-hashable-s3"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "yves.pares@tweag.io";
      author = "Tom Nielsen, Nicholas Clarke, Andreas Herrmann";
      homepage = "https://github.com/tweag/funflow";
      url = "";
      synopsis = "ContentHashable instances for S3 objects";
      description = "Provides ContentHashable instances for S3 objects";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."aws" or ((hsPkgs.pkgs-errors).buildDepError "aws"))
          (hsPkgs."cas-hashable" or ((hsPkgs.pkgs-errors).buildDepError "cas-hashable"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          ];
        buildable = true;
        };
      };
    }