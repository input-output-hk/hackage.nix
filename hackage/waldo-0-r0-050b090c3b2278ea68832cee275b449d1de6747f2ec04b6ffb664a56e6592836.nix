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
      identifier = { name = "waldo"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "davean 2012-2017";
      maintainer = "oss@xkcd.com";
      author = "davean";
      homepage = "";
      url = "";
      synopsis = "A generator of comics based on some ascertainable data about the requester.";
      description = "This package was writen to power <https://xkcd.com/ xkcd>'s 2012 April Fools comic <https://xkcd.com/1037 Umwelt>. It uses several datasets and a script to generate a customized story specific to the user viewing it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."lrucache" or (buildDepError "lrucache"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."hs-GeoIP" or (buildDepError "hs-GeoIP"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."imagesize-conduit" or (buildDepError "imagesize-conduit"))
          (hsPkgs."zlib-conduit" or (buildDepError "zlib-conduit"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."Geodetic" or (buildDepError "Geodetic"))
          (hsPkgs."SHA" or (buildDepError "SHA"))
          (hsPkgs."Glob" or (buildDepError "Glob"))
          (hsPkgs."browscap" or (buildDepError "browscap"))
          ];
        buildable = true;
        };
      exes = {
        "waldo-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."waldo" or (buildDepError "waldo"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-app-static" or (buildDepError "wai-app-static"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."safe" or (buildDepError "safe"))
            ];
          buildable = true;
          };
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."waldo" or (buildDepError "waldo"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."zlib-conduit" or (buildDepError "zlib-conduit"))
            ];
          buildable = true;
          };
        };
      };
    }