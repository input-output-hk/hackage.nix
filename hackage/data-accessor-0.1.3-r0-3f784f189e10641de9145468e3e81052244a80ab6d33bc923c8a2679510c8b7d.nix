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
      specVersion = "0";
      identifier = { name = "data-accessor"; version = "0.1.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>, Luke Palmer <lrpalmer@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/Record_access";
      url = "http://code.haskell.org/data-accessor/";
      synopsis = "Utilities for accessing and manipulating fields of records";
      description = "In Haskell 98 the name of a record field\nis automatically also the name of a function which gets the value\nof the according field.\nE.g. if we have\n\ndata Pair a b = Pair {first :: a, second :: b}\n\nthen\n\n> first  :: Pair a b -> a\n> second :: Pair a b -> b\n\nHowever for setting or modifying a field value\nwe need to use some syntactic sugar, which is often clumsy.\n\nmodifyFirst :: (a -> a) -> (Pair a b -> Pair a b)\nmodifyFirst f r\\@(Pair {first=a}) = r{first = f a}\n\nWith this package you can define record field accessors\nwhich allow setting, getting and modifying values easily.\nThe package clearly demonstrates the power of the functional approach:\nYou can combine accessors of a record and sub-records,\nto make the access look like the fields of the sub-record belong to the main record.\n\nExample:\n\n> *Data.Accessor.Example> (first^:second^=10) (('b',7),\"hallo\")\n> (('b',10),\"hallo\")\n\nYou can easily manipulate record fields in a 'Control.Monad.State.State' monad,\nyou can easily code Show instances that use the Accessor syntax\nand you can parse binary streams into records.\nSee @Data.Accessor.Example@ for demonstration of all features.\n\nIt would be great if in revised Haskell versions the names of record fields\nare automatically 'Data.Accessor.Accessor's\nrather than plain @get@ functions.\nThe package @data-accessor-template@ provides Template Haskell functions\nfor automated generation of 'Data.Acesssor.Accessor's.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      };
    }