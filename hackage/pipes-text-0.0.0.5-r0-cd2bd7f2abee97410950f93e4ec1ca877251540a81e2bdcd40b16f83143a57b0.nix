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
      identifier = { name = "pipes-text"; version = "0.0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "Michael Thompson";
      homepage = "https://github.com/michaelt/text-pipes";
      url = "";
      synopsis = "Text pipes.";
      description = "Many of the pipes and other operations defined here mirror those in\nthe `pipes-bytestring` library. Folds like `length` and grouping\noperations like `lines` simply  adjust for the differences between\n`ByteString` and `Text` and `Word8` and `Char`. It is hoped that this\nhomogeneity will aid in learning the terms and programming style associated\nwith both of them.\n\nThe most distinctive addition of the library to that core is the\napparatus for encoding and decoding `Text` and `ByteString`.\n\nAlso defined are some simple functions akin to the `String`\noperations in `Pipes.Prelude`, and others like the utilities in `Data.Text`.\n\nAll of the `IO` operations defined here - e.g `readFile`, `stdout` etc.\n- are conveniences akin to those in `Data.Text.IO` which e.g. try to\nfind the system encoding and use the exceptions defined in the `text`\nlibrary. Proper `IO` in the sense of this library will employ\n`pipes-bytestring` in conjuntion with 'pure' operations like\n`decodeUtf8` and `encodeUtf8` that are defined here.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."pipes-group" or (buildDepError "pipes-group"))
          (hsPkgs."pipes-parse" or (buildDepError "pipes-parse"))
          (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
          (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      };
    }