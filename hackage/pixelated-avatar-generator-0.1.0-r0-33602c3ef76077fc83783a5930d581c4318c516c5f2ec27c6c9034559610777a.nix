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
      identifier = { name = "pixelated-avatar-generator"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2016 Christopher Wells";
      maintainer = "cwellsny@nycap.rr.com";
      author = "Christopher Wells";
      homepage = "https://github.com/ExcaliburZero/pixelated-avatar-generator";
      url = "";
      synopsis = "A library and application for generating pixelated avatars.";
      description = "<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQAAAAEAAQMAAABmvDolAAAABlBMVEWWlpb///+oiwZLAAAAUElEQVRo3u3XsQ0AIAgAQfZfGhsLoxAH4L7CeLXBiF1mZjUHAADAFQAAQHX5IAAARoLzUM4AAIwF9igAAH5AkqruR6NdLgAAGAX8swAAaMACTyHw4mh6Rv4AAAAASUVORK5CYII=>>\n\nPixelated Avatar Generator is a library and application\nfor generating pixelated avatar images from seed strings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."split" or (buildDepError "split"))
          ];
        buildable = true;
        };
      exes = {
        "pixelated-avatar-generator" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pixelated-avatar-generator" or (buildDepError "pixelated-avatar-generator"))
            ];
          buildable = true;
          };
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."pixelated-avatar-generator" or (buildDepError "pixelated-avatar-generator"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }