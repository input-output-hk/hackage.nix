{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "regex-tdfa-text"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shelarcy <shelarcy@gmail.com>";
      author = "Chris Kuklewicz 2007-2009, shelarcy 2012";
      homepage = "";
      url = "";
      synopsis = "Text interface for regex-tdfa";
      description = "This provides text interface for regex-tdfa.\n\nThis should be part of regex-tdfa package. But my patches are not accepted yet.\nSo, I made a separate package. If you are interested in my patches, see\n<http://hub.darcs.net/shelarcy/regex-base> and <http://hub.darcs.net/shelarcy/regex-tdfa>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
          (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
          ];
        buildable = true;
        };
      };
    }