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
      identifier = { name = "postgresql-copy-escape"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Joseph Adams 2012";
      maintainer = "joeyadams3.14159@gmail.com";
      author = "Joey Adams";
      homepage = "https://github.com/joeyadams/hs-postgresql-copy-escape";
      url = "";
      synopsis = "Format data to feed to a PostgreSQL COPY FROM statement";
      description = "In PostgreSQL, the @COPY@ statement [1] provides a fast way to perform bulk\ninsertion and retrieval.  To use @COPY ... FROM@ for bulk insertion, the\ndata must first be converted to a special CSV-like format.\n\nThis package provides basic support for converting data to the format\nneeded by @COPY ... FROM@.  However, it does not provide the inverse\noperation (namely, reading data produced by @COPY ... TO@), nor does it\nsupport formatting customizations (what delimiter to use, how to represent\nNULL, etc.).\n\n\\[1\\]: <http://www.postgresql.org/docs/current/static/sql-copy.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        };
      };
    }