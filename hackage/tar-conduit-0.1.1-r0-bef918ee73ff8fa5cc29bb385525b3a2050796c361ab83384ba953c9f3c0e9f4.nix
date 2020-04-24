{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tar-conduit"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com, bartavelle@gmail.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/tar-conduit#readme";
      url = "";
      synopsis = "Parse tar files using conduit for streaming";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit-combinators" or ((hsPkgs.pkgs-errors).buildDepError "conduit-combinators"))
          ];
        buildable = true;
        };
      };
    }