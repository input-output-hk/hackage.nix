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
      identifier = { name = "zuramaru"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "aiya000";
      maintainer = "aiya000 <aiya000.develop@gmail.com>";
      author = "aiya000";
      homepage = "https://github.com/aiya000/hs-zuramaru";
      url = "";
      synopsis = "A lisp processor, An inline-lisp, in Haskell";
      description = "A lisp dialect";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."distributive" or (buildDepError "distributive"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."extensible" or (buildDepError "extensible"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."readline" or (buildDepError "readline"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."string-qq" or (buildDepError "string-qq"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-show" or (buildDepError "text-show"))
          (hsPkgs."throwable-exceptions" or (buildDepError "throwable-exceptions"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "maru" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."distributive" or (buildDepError "distributive"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."extensible" or (buildDepError "extensible"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."string-qq" or (buildDepError "string-qq"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-show" or (buildDepError "text-show"))
            (hsPkgs."throwable-exceptions" or (buildDepError "throwable-exceptions"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."zuramaru" or (buildDepError "zuramaru"))
            ];
          buildable = true;
          };
        };
      tests = {
        "integrate-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."distributive" or (buildDepError "distributive"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."extensible" or (buildDepError "extensible"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."string-qq" or (buildDepError "string-qq"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-show" or (buildDepError "text-show"))
            (hsPkgs."throwable-exceptions" or (buildDepError "throwable-exceptions"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."silently" or (buildDepError "silently"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        "unit-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."distributive" or (buildDepError "distributive"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."extensible" or (buildDepError "extensible"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."string-qq" or (buildDepError "string-qq"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-show" or (buildDepError "text-show"))
            (hsPkgs."throwable-exceptions" or (buildDepError "throwable-exceptions"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }