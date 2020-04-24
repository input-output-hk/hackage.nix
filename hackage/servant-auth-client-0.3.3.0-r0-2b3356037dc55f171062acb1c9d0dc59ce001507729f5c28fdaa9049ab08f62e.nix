{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { servant-client-core = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-auth-client"; version = "0.3.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Julian K. Arni";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "http://github.com/haskell-servant/servant-auth#readme";
      url = "";
      synopsis = "servant-client/servant-auth compatibility";
      description = "This package provides instances that allow generating clients from\n<https://hackage.haskell.org/package/servant servant>\nAPIs that use\n<https://hackage.haskell.org/package/servant-auth servant-auth's> @Auth@ combinator.\n\nFor a quick overview of the usage, see the <http://github.com/haskell-servant/servant-auth#readme README>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."servant-auth" or ((hsPkgs.pkgs-errors).buildDepError "servant-auth"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          ] ++ (if flags.servant-client-core
          then [
            (hsPkgs."servant-client-core" or ((hsPkgs.pkgs-errors).buildDepError "servant-client-core"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ]
          else [
            (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
            ]);
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
            (hsPkgs."servant-auth" or ((hsPkgs.pkgs-errors).buildDepError "servant-auth"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."servant-auth-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-auth-client"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."servant-auth-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-auth-server"))
            (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."jose" or ((hsPkgs.pkgs-errors).buildDepError "jose"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or ((hsPkgs.pkgs-errors).buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }