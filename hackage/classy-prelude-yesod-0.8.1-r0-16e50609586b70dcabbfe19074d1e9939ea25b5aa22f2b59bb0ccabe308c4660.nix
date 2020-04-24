{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "classy-prelude-yesod"; version = "0.8.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/classy-prelude";
      url = "";
      synopsis = "Provide a classy prelude including common Yesod functionality.";
      description = "This is an extension of classy-prelude-conduit, adding in commonly used functions and data types from Yesod.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."classy-prelude" or ((hsPkgs.pkgs-errors).buildDepError "classy-prelude"))
          (hsPkgs."classy-prelude-conduit" or ((hsPkgs.pkgs-errors).buildDepError "classy-prelude-conduit"))
          (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
          (hsPkgs."yesod-newsfeed" or ((hsPkgs.pkgs-errors).buildDepError "yesod-newsfeed"))
          (hsPkgs."yesod-static" or ((hsPkgs.pkgs-errors).buildDepError "yesod-static"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          ];
        buildable = true;
        };
      };
    }