{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gym-http-api"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "dl3913@ic.ac.uk, sam@stites.io";
      author = "Daniel Lucsanszky, Sam Stites";
      homepage = "https://github.com/stites/gym-http-api#readme";
      url = "";
      synopsis = "REST client to the gym-http-api project";
      description = "This library provides a REST client to the gym open-source library. gym-http-api itself provides a <https://github.com/openai/gym-http-api/blob/master/gym_http_server.py python-based REST> server to the gym open-source library, allowing development in languages other than python.\n\nNote that the <https://github.com/openai/gym-http-api/ openai/gym-http-api> is a monorepo of all language-clients. This hackage library tracks <https://github.com/stites/gym-http-api/ stites/gym-http-api> which is the actively-maintained haskell fork.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
          (hsPkgs."servant-lucid" or ((hsPkgs.pkgs-errors).buildDepError "servant-lucid"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."gym-http-api" or ((hsPkgs.pkgs-errors).buildDepError "gym-http-api"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
            ];
          buildable = true;
          };
        };
      };
    }