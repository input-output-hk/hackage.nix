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
      specVersion = "1.8";
      identifier = { name = "enummapset-th"; version = "0.6.1.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2013−2015 Liyang HU";
      maintainer = "enummapset-th@liyang.hu";
      author = "Liyang HU";
      homepage = "https://github.com/tsurucapital/enummapset-th";
      url = "";
      synopsis = "TH-generated EnumSet/EnumMap wrappers around IntSet/IntMap.";
      description = "This package wraps @IntSet@ and @IntMap@ from @containers@, and provides\nfast sets and maps keyed on any data type with a well-behaved @Enum@\ninstance. Useful for derived @Enum@s, newtype'd @Int@s, or any data type\nthat can be packed into an @Int@: just implement @fromEnum@ and @toEnum@.\n\nThe boilerplate is generated using Template Haskell, so unlike\n@enummapset@ it's easier to maintain and keep up-to-date with\n@containers@. On the downside, it's less portable.\n\nNote that \"Data.EnumMap.Lazy\" and \"Data.EnumMap.Strict\" provide distinct\nnewtype wrappers, and their respective 'Functor' instances behave as\nexpected, unlike that of @IntMap@ which is alway lazy.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      };
    }