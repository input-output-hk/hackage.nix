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
      identifier = { name = "wai-request-spec"; version = "0.8.5.1"; };
      license = "BSD-3-Clause";
      copyright = "Alej Cabrera 2015";
      maintainer = "cpp.cabrera@gmail.com";
      author = "Alej Cabrera";
      homepage = "https://gitlab.com/cpp.cabrera/wai-request-spec";
      url = "";
      synopsis = "Declarative request parsing";
      description = "WAI Request Spec is a declarative validation layer for HTTP\nrequests. It aims to make error-handling for malformed requests as\neasy as taking the happy path.\n\nA brief summary of the core features:\n\n* Can specify headers and query params as input sources\n\n* Support for parsing ints, floats, text, bytes (with encodings), and bools\n\n* A parser combinator interface for chaining together request requirements\n\n* Support for alternatives via `(<|>)`, each tried in turn until one succeeds\n\n* Support for optional parameters\n\n* Convenient and informative default error messages that let service\nconsumers know what went wrong\n\nIt is built on WAI, so it is compatible with several Haskell\nweb frameworks. All you need is the ability to access the Request\nobject, and WAI Request Spec takes care of the rest!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          ];
        };
      };
    }