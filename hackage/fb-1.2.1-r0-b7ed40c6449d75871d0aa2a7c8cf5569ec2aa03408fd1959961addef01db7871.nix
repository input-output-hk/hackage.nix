{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "fb"; version = "1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Felipe Lessa and Sibi Prabakaran";
      maintainer = "Sibi <sibi@psibi.in>";
      author = "Felipe Lessa, Sibi Prabakaran";
      homepage = "https://github.com/psibi/fb";
      url = "";
      synopsis = "Bindings to Facebook's API.";
      description = "This package exports bindings to Facebook's APIs (see\n<http://developers.facebook.com/>).  Does not have any external\ndependencies and tries to use as little resources (such as\nmemory, sockets and CPU) as possible by using packages such as\n@aeson@, @attoparsec@, @bytestring@, @conduit@, @http-conduit@,\n@text@ and others.\n\nWhile we would like to have a complete binding to Facebook's\nAPI, this package is being developed on demand.  If you need\nsomething that has not been implemented yet, please send a pull\nrequest or file an issue on GitHub\n(<https://github.com/psibi/fb/issues>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."conduit-extra" or ((hsPkgs.pkgs-errors).buildDepError "conduit-extra"))
          (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
          (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
          (hsPkgs."cryptohash-cryptoapi" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-cryptoapi"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."fb" or ((hsPkgs.pkgs-errors).buildDepError "fb"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
            ];
          buildable = true;
          };
        };
      };
    }