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
      specVersion = "1.18";
      identifier = { name = "preql"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bergey@teallabs.org";
      author = "Daniel Bergey";
      homepage = "https://github.com/bergey/preql#readme";
      url = "";
      synopsis = "safe PostgreSQL queries using Quasiquoters";
      description = "Before you Post(gres)QL, preql.\n\n@preql@ provides a low-level interface to PostgreSQL and a quasiquoter that converts\ninline variable names to SQL parameters.  Higher-level interfaces, checking SQL syntax &\nschema, are planned.\n\nthe [quickstart](https://github.com/bergey/preql#quickstart)\nor the [vision](https://github.com/bergey/preql#vision-parsing-sql-in-haskell-quasiquotes)\n\nMost applications will want to import the top-level module @Preql@.  When writing @SQL@\ninstances or your own higher-level abstractions, you may want the lower-level,\nIO-specific functions in @Preql.Wire@, not all of which are re-exported from @Preql@.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary-parser" or (buildDepError "binary-parser"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytestring-strict-builder" or (buildDepError "bytestring-strict-builder"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."postgresql-binary" or (buildDepError "postgresql-binary"))
          (hsPkgs."postgresql-libpq" or (buildDepError "postgresql-libpq"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."th-lift-instances" or (buildDepError "th-lift-instances"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (buildToolDepError "alex")))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (buildToolDepError "happy")))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary-parser" or (buildDepError "binary-parser"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-strict-builder" or (buildDepError "bytestring-strict-builder"))
            (hsPkgs."contravariant" or (buildDepError "contravariant"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."postgresql-binary" or (buildDepError "postgresql-binary"))
            (hsPkgs."postgresql-libpq" or (buildDepError "postgresql-libpq"))
            (hsPkgs."preql" or (buildDepError "preql"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."th-lift-instances" or (buildDepError "th-lift-instances"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (buildToolDepError "alex")))
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (buildToolDepError "happy")))
            ];
          buildable = true;
          };
        };
      };
    }