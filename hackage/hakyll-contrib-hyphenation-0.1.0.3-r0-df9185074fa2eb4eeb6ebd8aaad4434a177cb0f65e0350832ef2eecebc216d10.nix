{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hakyll-contrib-hyphenation";
        version = "0.1.0.3";
        };
      license = "MIT";
      copyright = "";
      maintainer = "Pavel Kretov <firegurafiku@gmail.com>";
      author = "Pavel Kretov <firegurafiku@gmail.com>";
      homepage = "https://bitbucket.org/rvlm/hakyll-contrib-hyphenation";
      url = "";
      synopsis = "automatic hyphenation for Hakyll";
      description = "This library provides Hakyll compiler to automatically\nhyphenate each word in HTML output with Unicode SOFT-HYPHEN\ncharacters. It understands HTML markup and doesn't try, for\nexample, to hyphenate tag names and attributes. It uses\n<http://hackage.haskell.org/package/hyphenation hyphenation>\npackage to do actual work of splitting words.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hakyll" or ((hsPkgs.pkgs-errors).buildDepError "hakyll"))
          (hsPkgs."hyphenation" or ((hsPkgs.pkgs-errors).buildDepError "hyphenation"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
          ];
        buildable = true;
        };
      };
    }