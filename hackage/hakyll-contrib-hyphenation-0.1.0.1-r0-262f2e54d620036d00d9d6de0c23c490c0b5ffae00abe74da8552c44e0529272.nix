{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hakyll-contrib-hyphenation";
        version = "0.1.0.1";
        };
      license = "MIT";
      copyright = "";
      maintainer = "Pavel Kretov <firegurafiku@gmail.com>";
      author = "Pavel Kretov <firegurafiku@gmail.com>";
      homepage = "https://bitbucket.org/rvlm/hakyll-contrib-hyphenation";
      url = "";
      synopsis = "Automatic hyphenation for Hakyll";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."hyphenation" or ((hsPkgs.pkgs-errors).buildDepError "hyphenation"))
          (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
          (hsPkgs."hakyll" or ((hsPkgs.pkgs-errors).buildDepError "hakyll"))
          ];
        buildable = true;
        };
      };
    }