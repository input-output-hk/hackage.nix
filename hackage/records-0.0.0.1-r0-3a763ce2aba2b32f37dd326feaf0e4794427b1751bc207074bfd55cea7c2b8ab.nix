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
      specVersion = "1.2.3";
      identifier = { name = "records"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2007–2010 Brandenburgische Technische Universität Cottbus";
      maintainer = "jeltsch@tu-cottbus.de";
      author = "Wolfgang Jeltsch";
      homepage = "http://community.haskell.org/~jeltsch/records/";
      url = "http://hackage.haskell.org/packages/archive/records/0.0.0.0/records-0.0.0.0.tar.gz";
      synopsis = "A flexible record system";
      description = "This package provides a flexible record system which has some novel features:\n\n* Using record type families, the type system can be used to describe relationships\nbetween field types.\n\n* Record scheme induction permits the implementation of polymorphic record\ncombinators that work on whole records instead of only a fixed set of fields.\n\n* Subkind polymorphism for sorts makes it possible to impose varying restrictions on\nthe structure of field types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."kinds" or (buildDepError "kinds"))
          (hsPkgs."type-functions" or (buildDepError "type-functions"))
          ];
        };
      };
    }