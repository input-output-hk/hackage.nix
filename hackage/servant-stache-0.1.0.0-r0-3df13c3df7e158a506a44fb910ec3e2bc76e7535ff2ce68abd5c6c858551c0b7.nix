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
      identifier = { name = "servant-stache"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Tatsuya Hirose";
      maintainer = "tatsuya.hirose.0804@gmail.com";
      author = "Tatsuya Hirose";
      homepage = "https://github.com/lotz84/servant-stache#readme";
      url = "";
      synopsis = "Content-Types for rendering Mustache in servant";
      description = "Content-Types and template management for rendering Mustache templates in servant Web applications. This package is heavily inspired by <http://hackage.haskell.org/package/servant-ede servant-ede>. Documentation and examples available at \"Servant.Mustache\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."http-media" or (buildDepError "http-media"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."stache" or (buildDepError "stache"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."xss-sanitize" or (buildDepError "xss-sanitize"))
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."http-media" or (buildDepError "http-media"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."servant-stache" or (buildDepError "servant-stache"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          };
        };
      };
    }