{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "scotty-format"; version = "0.1.0.2"; };
      license = "Apache-2.0";
      copyright = "2016 Giovanni Cappellotto";
      maintainer = "potomak84@gmail.com";
      author = "Giovanni Cappellotto";
      homepage = "https://github.com/potomak/scotty-format#readme";
      url = "";
      synopsis = "Response format helper for the Scotty web framework.";
      description = "scotty-format is a helper for the Scotty web framework that helps you defining\ndifferent response formats based on the request's `Accept` header value.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."http-media" or ((hsPkgs.pkgs-errors).buildDepError "http-media"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."scotty" or ((hsPkgs.pkgs-errors).buildDepError "scotty"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "scotty-format-example" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."scotty" or ((hsPkgs.pkgs-errors).buildDepError "scotty"))
            (hsPkgs."scotty-format" or ((hsPkgs.pkgs-errors).buildDepError "scotty-format"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "scotty-format-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."scotty-format" or ((hsPkgs.pkgs-errors).buildDepError "scotty-format"))
            ];
          buildable = true;
          };
        };
      };
    }