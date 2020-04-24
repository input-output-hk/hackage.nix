{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "http-trace"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016 Sergey Bushnyak";
      maintainer = "sergey.bushnyak@sigrlami.eu";
      author = "Sergey Bushnyak";
      homepage = "https://github.com/sigrlami/http-trace#readme";
      url = "";
      synopsis = "Tracking http redirects";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"))
          (hsPkgs."pcre-heavy" or ((hsPkgs.pkgs-errors).buildDepError "pcre-heavy"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          ];
        buildable = true;
        };
      exes = {
        "http-trace" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."http-trace" or ((hsPkgs.pkgs-errors).buildDepError "http-trace"))
            ];
          buildable = true;
          };
        };
      };
    }