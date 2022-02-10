{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { openssl = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "github"; version = "0.23"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2012-2013 Mike Burns, Copyright 2013-2015 John Wiegley, Copyright 2016-2019 Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Mike Burns, John Wiegley, Oleg Grenrus";
      homepage = "https://github.com/phadej/github";
      url = "";
      synopsis = "Access to the GitHub API, v3.";
      description = "The GitHub API provides programmatic access to the full\nGitHub Web site, from Issues to Gists to repos down to the underlying git data\nlike references and trees. This library wraps all of that, exposing a basic but\nHaskell-friendly set of functions and data structures.\n\nFor supported endpoints see \"GitHub\" module.\n\n> import qualified GitHub as GH\n>\n> main :: IO ()\n> main = do\n>     possibleUser <- GH.executeRequest' $ GH.userInfoForR \"phadej\"\n>     print possibleUser\n\nFor more of an overview please see the README: <https://github.com/phadej/github/blob/master/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."binary-instances" or (errorHandler.buildDepError "binary-instances"))
          (hsPkgs."cryptohash-sha1" or (errorHandler.buildDepError "cryptohash-sha1"))
          (hsPkgs."deepseq-generics" or (errorHandler.buildDepError "deepseq-generics"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-link-header" or (errorHandler.buildDepError "http-link-header"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."iso8601-time" or (errorHandler.buildDepError "iso8601-time"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-instances" or (errorHandler.buildDepError "vector-instances"))
          ] ++ (if flags.openssl
          then [
            (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
            (hsPkgs."HsOpenSSL-x509-system" or (errorHandler.buildDepError "HsOpenSSL-x509-system"))
            (hsPkgs."http-client-openssl" or (errorHandler.buildDepError "http-client-openssl"))
            ]
          else [
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            ])) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "github-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."github" or (errorHandler.buildDepError "github"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }