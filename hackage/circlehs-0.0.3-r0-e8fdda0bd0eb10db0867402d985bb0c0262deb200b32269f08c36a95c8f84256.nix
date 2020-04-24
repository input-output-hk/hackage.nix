{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "circlehs"; version = "0.0.3"; };
      license = "MIT";
      copyright = "2016 Denis Shevchenko";
      maintainer = "me@dshevchenko.biz";
      author = "Denis Shevchenko";
      homepage = "https://github.com/denisshevchenko/circlehs";
      url = "";
      synopsis = "The CircleCI REST API for Haskell";
      description = "The CircleCI REST API implementation in Haskell. For more info please see <https://circleci.com/docs/api/ official API reference>.\n\nBuilt with <http://hackage.haskell.org/package/servant Servant>.\n\n/Please note that implementation is incomplete yet./";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
          ];
        buildable = true;
        };
      };
    }