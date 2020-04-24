{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "vega-view"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Douglas Burke";
      maintainer = "dburke.gw@gmail.com";
      author = "Douglas Burke";
      homepage = "https://github.com/DougBurke/vega-view#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/DougBurke/vega-view#readme>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "vegaview" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."scotty" or ((hsPkgs.pkgs-errors).buildDepError "scotty"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }