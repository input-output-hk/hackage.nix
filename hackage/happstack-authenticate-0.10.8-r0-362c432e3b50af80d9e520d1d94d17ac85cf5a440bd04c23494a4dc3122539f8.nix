{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "happstack-authenticate"; version = "0.10.8"; };
      license = "BSD-3-Clause";
      copyright = "2011 SeeReason Partners, LLC";
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
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."ixset" or ((hsPkgs.pkgs-errors).buildDepError "ixset"))
          (hsPkgs."happstack-server" or ((hsPkgs.pkgs-errors).buildDepError "happstack-server"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."fb" or ((hsPkgs.pkgs-errors).buildDepError "fb"))
          (hsPkgs."safecopy" or ((hsPkgs.pkgs-errors).buildDepError "safecopy"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pwstore-purehaskell" or ((hsPkgs.pkgs-errors).buildDepError "pwstore-purehaskell"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."reform" or ((hsPkgs.pkgs-errors).buildDepError "reform"))
          (hsPkgs."reform-blaze" or ((hsPkgs.pkgs-errors).buildDepError "reform-blaze"))
          (hsPkgs."reform-happstack" or ((hsPkgs.pkgs-errors).buildDepError "reform-happstack"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."web-routes" or ((hsPkgs.pkgs-errors).buildDepError "web-routes"))
          (hsPkgs."web-routes-happstack" or ((hsPkgs.pkgs-errors).buildDepError "web-routes-happstack"))
          ];
        buildable = true;
        };
      };
    }