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
      specVersion = "1.6";
      identifier = { name = "curl-aeson"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "joel.lehtonen+curlaeson@iki.fi";
      author = "Joel Lehtonen";
      homepage = "https://github.com/zouppen/haskell-curl-aeson";
      url = "";
      synopsis = "Communicate with HTTP service using JSON";
      description = "A library for communicating with JSON over HTTP connection.\nSupports rich set of HTTP connectivity features provided by\nlibcurl combined to the performance and elegancy of aeson.\n\nAll HTTP methods are supported. Instances of 'ToJSON' and\n'FromJSON' typeclasses can be transferred via this library.\nSession cookies and other HTTP options may be passed to libcurl\nif needed.\n\nThis library is at its best when communicating with simple,\nnon-standardized JSON interfaces. If you are implementing\nJSON-RPC compliant client or server, take a look at\n<http://hackage.haskell.org/package/jmacro-rpc>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."curl" or (buildDepError "curl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }