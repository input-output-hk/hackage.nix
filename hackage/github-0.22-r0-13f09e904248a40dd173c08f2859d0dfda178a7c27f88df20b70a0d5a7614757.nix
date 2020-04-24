{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { openssl = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "github"; version = "0.22"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2012-2013 Mike Burns, Copyright 2013-2015 John Wiegley, Copyright 2016-2019 Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Mike Burns, John Wiegley, Oleg Grenrus";
      homepage = "https://github.com/phadej/github";
      url = "";
      synopsis = "Access to the GitHub API, v3.";
      description = "The GitHub API provides programmatic access to the full\nGitHub Web site, from Issues to Gists to repos down to the underlying git data\nlike references and trees. This library wraps all of that, exposing a basic but\nHaskell-friendly set of functions and data structures.\n\nFor supported endpoints see \"GitHub\" module.\n\n> import qualified GitHub as GH\n>\n> main :: IO ()\n> main = do\n>     possibleUser <- GH.executeRequest' \$ GH.userInfoForR \"phadej\"\n>     print possibleUser\n\nFor more of an overview please see the README: <https://github.com/phadej/github/blob/master/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
          (hsPkgs."binary-instances" or ((hsPkgs.pkgs-errors).buildDepError "binary-instances"))
          (hsPkgs."cryptohash-sha1" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-sha1"))
          (hsPkgs."deepseq-generics" or ((hsPkgs.pkgs-errors).buildDepError "deepseq-generics"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-link-header" or ((hsPkgs.pkgs-errors).buildDepError "http-link-header"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."iso8601-time" or ((hsPkgs.pkgs-errors).buildDepError "iso8601-time"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-instances" or ((hsPkgs.pkgs-errors).buildDepError "vector-instances"))
          ] ++ (if flags.openssl
          then [
            (hsPkgs."http-client-openssl" or ((hsPkgs.pkgs-errors).buildDepError "http-client-openssl"))
            (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
            (hsPkgs."HsOpenSSL-x509-system" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL-x509-system"))
            ]
          else [
            (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
            (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
            ])) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "github-test" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
            (hsPkgs."github" or ((hsPkgs.pkgs-errors).buildDepError "github"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or ((hsPkgs.pkgs-errors).buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }