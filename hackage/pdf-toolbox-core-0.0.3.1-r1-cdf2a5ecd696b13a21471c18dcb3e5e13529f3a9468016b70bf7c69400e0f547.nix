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
      identifier = { name = "pdf-toolbox-core"; version = "0.0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Yuras Shumovich 2012-2015";
      maintainer = "Yuras Shumovich <shumovichy@gmail.com>";
      author = "Yuras Shumovich";
      homepage = "https://github.com/Yuras/pdf-toolbox";
      url = "";
      synopsis = "A collection of tools for processing PDF files.";
      description = "Low level tools for processing PDF files.\n\nLevel of abstraction: cross reference, trailer, indirect object, object\n\nThe API is based on random access input streams, and is designed to be memory efficient.\nWe don't need to parse the entire PDF file and store it in memory when you need just one page or two.\nUsually it is also leads to time efficiency, but we don't try optimize performance\nby e.g. maintaining xref or object cache. Higher level layers should take care of it.\n\nThe library is low level. It may mean that you need to be familiar with PDF file internals to\nactually use it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."io-streams" or (buildDepError "io-streams"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."zlib-bindings" or (buildDepError "zlib-bindings"))
          ];
        };
      };
    }