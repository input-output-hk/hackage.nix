let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "thumbnail-plus"; version = "1.0.3"; };
      license = "MIT";
      copyright = "(c) 2014 Prowdsponsor";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa, Michael Snoyman";
      homepage = "https://github.com/prowdsponsor/thumbnail-plus";
      url = "";
      synopsis = "Generate thumbnails easily and safely.";
      description = "This package provides every tool you need to easily and safely\ngenerate thumbnails for JPG, GIF and PNG images.\n\nBy safely, we mean that this package should be able to handle\nimages uploaded to a public web server without any known\nvulnerabilities:\n\n* File sizes are constrained and checked.\n\n* Image sizes are constrained and checked before the images\nare loaded into memory.  Uses code from the deprecated\n@imagesize-conduit@ by Michael Snoyman.\n\n* Optionally, the original image is reencoded before being\nsaved.\n\n* The images are processed using the <http://libgd.bitbucket.org/ GD library>,\nwhich is heavily battle-tested and\n<http://www.cvedetails.com/vulnerability-list/vendor_id-2678/Gd-Graphics-Library.html audited by many pairs of eyeballs>.\n\nPlease report any vulnerabilities you may find, we take strive\nto make this library suitable for processing arbitrary images.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."gd" or (buildDepError "gd"))
          ];
        };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."thumbnail-plus" or (buildDepError "thumbnail-plus"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          };
        };
      };
    }