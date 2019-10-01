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
      specVersion = "1.12";
      identifier = { name = "string-fromto"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Clovyr LLC";
      maintainer = "patrick@clovyr.io";
      author = "Patrick Nielsen";
      homepage = "https://github.com/clovyr/string-fromto";
      url = "";
      synopsis = "Conversions between common string types, as well as Base16/Base32/Base64.";
      description = "Have you ever found yourself frustrated that you're spending 15-30% of your\ntime in Haskell converting between string types, remembering which module has\nthe `toStrict` function, importing Data.Text.Encoding and\nData.Text.Lazy.Encoding qualified, spending time thinking about how to do\nBase64 encoding, etc.? Or tried to use one of the (excellent) typeclass-based\nstring conversion libraries, only to find yourself adding awkward type\nsignatures to avoid type-inferencing ambiguities?\n\nThis package exports a collection of functions that follow a simple pattern:\n\n@stringTypeAToStringTypeB :: a -> b@\n\nThis way, if you import @Data.String.FromTo@ unqualified, or as part of\nyour Prelude, all you have to think about is which type you want to convert\ninto which other type.\n\nFor convenience, this package also exposes conversions between Base16, Base32,\nand Base64-encoded strings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }