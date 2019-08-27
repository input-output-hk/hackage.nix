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
      identifier = { name = "http-encodings"; version = "0.9.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2015 Stevens Institute of Technology";
      maintainer = "Andrey Chudnov <oss@chudnov.com>";
      author = "Andrey Chudnov";
      homepage = "http://github.com/achudnov/http-encodings";
      url = "";
      synopsis = "A library for encoding and decoding bodies of HTTP messages";
      description = "A library for encoding and decoding bodies of HTTP messages, designed to work with the HTTP and http-server libraries. No heuristic encoding detection at this time. WANTED: a library implementing the Unix \"compress\" command encoding/decoding (or the LZW algorithm). The package versions follow Semantic Versioning model (semver.org).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."iconv" or (buildDepError "iconv"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."mime" or (buildDepError "mime"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      };
    }