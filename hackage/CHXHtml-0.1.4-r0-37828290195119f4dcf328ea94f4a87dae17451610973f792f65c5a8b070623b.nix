{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "CHXHtml"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "2010 Paul Talaga <paul@fuzzpault.com>";
      maintainer = "paul@fuzzpault.com";
      author = "Paul Talaga";
      homepage = "http://fuzzpault.com/chxhtml";
      url = "";
      synopsis = "A W3C compliant (X)HTML generating library";
      description = "An (X)Html generating library providing nearly full W3C compliance.  Non-compliant\ncontent is exposed at compile time and fails type-check.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."pcre-light" or ((hsPkgs.pkgs-errors).buildDepError "pcre-light"))
          ];
        buildable = true;
        };
      };
    }