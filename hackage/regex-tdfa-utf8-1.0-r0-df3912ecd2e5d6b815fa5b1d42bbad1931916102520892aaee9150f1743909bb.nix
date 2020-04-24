{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "regex-tdfa-utf8"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@list.mightyreason.com";
      author = "Chris Kuklewicz";
      homepage = "";
      url = "";
      synopsis = "This combines regex-tdfa with utf8-string to allow searching over UTF8 encoded lazy bytestrings.";
      description = "This combines regex-tdfa with utf8-string to allow searching over UTF8 encoded lazy bytestrings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
          (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
          ];
        buildable = true;
        };
      };
    }