{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "happstack-authenticate"; version = "2.3.4.4"; };
      license = "BSD-3-Clause";
      copyright = "2011-2015 SeeReason Partners, LLC";
      maintainer = "jeremy@seereason.com";
      author = "Jeremy Shaw.";
      homepage = "http://www.happstack.com/";
      url = "";
      synopsis = "Happstack Authentication Library";
      description = "A themeable authentication library with support for username+password and OpenId.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."acid-state" or ((hsPkgs.pkgs-errors).buildDepError "acid-state"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."authenticate" or ((hsPkgs.pkgs-errors).buildDepError "authenticate"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."boomerang" or ((hsPkgs.pkgs-errors).buildDepError "boomerang"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."email-validate" or ((hsPkgs.pkgs-errors).buildDepError "email-validate"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hsx2hs" or ((hsPkgs.pkgs-errors).buildDepError "hsx2hs"))
          (hsPkgs."jmacro" or ((hsPkgs.pkgs-errors).buildDepError "jmacro"))
          (hsPkgs."jwt" or ((hsPkgs.pkgs-errors).buildDepError "jwt"))
          (hsPkgs."ixset-typed" or ((hsPkgs.pkgs-errors).buildDepError "ixset-typed"))
          (hsPkgs."happstack-jmacro" or ((hsPkgs.pkgs-errors).buildDepError "happstack-jmacro"))
          (hsPkgs."happstack-server" or ((hsPkgs.pkgs-errors).buildDepError "happstack-server"))
          (hsPkgs."happstack-hsp" or ((hsPkgs.pkgs-errors).buildDepError "happstack-hsp"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."hsp" or ((hsPkgs.pkgs-errors).buildDepError "hsp"))
          (hsPkgs."hsx-jmacro" or ((hsPkgs.pkgs-errors).buildDepError "hsx-jmacro"))
          (hsPkgs."safecopy" or ((hsPkgs.pkgs-errors).buildDepError "safecopy"))
          (hsPkgs."mime-mail" or ((hsPkgs.pkgs-errors).buildDepError "mime-mail"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."pwstore-purehaskell" or ((hsPkgs.pkgs-errors).buildDepError "pwstore-purehaskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."userid" or ((hsPkgs.pkgs-errors).buildDepError "userid"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."web-routes" or ((hsPkgs.pkgs-errors).buildDepError "web-routes"))
          (hsPkgs."web-routes-boomerang" or ((hsPkgs.pkgs-errors).buildDepError "web-routes-boomerang"))
          (hsPkgs."web-routes-happstack" or ((hsPkgs.pkgs-errors).buildDepError "web-routes-happstack"))
          (hsPkgs."web-routes-th" or ((hsPkgs.pkgs-errors).buildDepError "web-routes-th"))
          (hsPkgs."web-routes-hsp" or ((hsPkgs.pkgs-errors).buildDepError "web-routes-hsp"))
          ];
        buildable = true;
        };
      };
    }