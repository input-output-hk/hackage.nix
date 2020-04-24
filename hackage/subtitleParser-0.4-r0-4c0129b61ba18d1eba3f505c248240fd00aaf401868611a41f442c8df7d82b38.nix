{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "subtitleParser"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ruben Astudillo  <ruben.astud@gmail.com>";
      author = "Ruben Astudillo  <ruben.astud@gmail.com>";
      homepage = "https://patch-tag.com/r/rubenAst/subtitleParser/home";
      url = "";
      synopsis = "A parser for .srt and .sub files";
      description = "A basic .srt and .sub parser based on attoparsec and text";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      };
    }