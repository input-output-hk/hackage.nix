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
      specVersion = "1.14";
      identifier = { name = "hydrogen-version"; version = "1.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "julian@scravy.de";
      author = "Julian Fleischer";
      homepage = "https://scravy.de/hydrogen-version/";
      url = "";
      synopsis = "Hydrogen Version Type";
      description = "A sane replacement for \"Data.Version\" from the @base@ package.\n\n\"Hydrogen.Version\" is also exported by \"Hydrogen.Prelude\" where\nit comes with a few more instances (e.g. for \"Data.Serialize\").\n\n>>> Differences to Data.Version\n\n[@Sane 'Ord' instance@] \"Data.Version\" relies on 'Ord' for lists,\nwhich will consider @1.0@ to be less than @1.0.0@. @Hydrogen.Version@\nconsiders these to be equal.\n\n[@Sane 'Read' and 'Show' instances@] With @Hydrogen.Version@ you can\njust do @read \"1.0.0\" :: Version@, whereas the 'Read' and 'Show'\ninstances for \"Data.Version\" do not give a concise representation:\n\n> show hydrogenVersion == \"1.0.0\"\n> show dataVersion == \"Version versionBranch = [1,0,0], versionTags = []\"\n\n[@Stricter API@] In @Hydrogen.Version@ you can create a 'Version'\nonly via 'mkVersion', whereas in \"Data.Version\" the constructor is\nexported, thus you could so such nonsense as\n@Data.Version.Version [] []@ (which is not a proper version at all).\n\n[@No Tags@] @Hydrogen.Version@ does not support tags. This is\nintentional, since there is no agreed upon definition for 'Ord' in\nthe presence of tags (consider @alpha@ vs @beta@ vs @snapshot@ vs\n@ga@ vs ...).";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      };
    }