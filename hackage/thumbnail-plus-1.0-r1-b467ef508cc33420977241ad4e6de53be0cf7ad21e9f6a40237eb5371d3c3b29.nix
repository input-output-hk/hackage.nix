{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "thumbnail-plus"; version = "1.0"; };
      license = "MIT";
      copyright = "(c) 2014 Prowdsponsor";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa, Michael Snoyman";
      homepage = "https://github.com/loyful/thumbnail-plus";
      url = "";
      synopsis = "Generate thumbnails easily and safely.";
      description = "This package provides every tool you need to easily and safely\ngenerate thumbnails for JPG, GIF and PNG images.\n\nBy safely, we mean that this package should be able to handle\nimages uploaded to a public web server without any known\nvulnerabilities:\n\n* File sizes are constrained and checked.\n\n* Image sizes are constrained and checked before the images\nare loaded into memory.  Uses code from the deprecated\n@imagesize-conduit@ by Michael Snoyman.\n\n* Optionally, the original image is reencoded before being\nsaved.\n\n* The images are processed using the <http://libgd.bitbucket.org/ GD library>,\nwhich is heavily battle-tested and\n<http://www.cvedetails.com/vulnerability-list/vendor_id-2678/Gd-Graphics-Library.html audited by many pairs of eyeballs>.\n\nPlease report any vulnerabilities you may find, we take strive\nto make this library suitable for processing arbitrary images.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."gd" or ((hsPkgs.pkgs-errors).buildDepError "gd"))
          ];
        buildable = true;
        };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."thumbnail-plus" or ((hsPkgs.pkgs-errors).buildDepError "thumbnail-plus"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }