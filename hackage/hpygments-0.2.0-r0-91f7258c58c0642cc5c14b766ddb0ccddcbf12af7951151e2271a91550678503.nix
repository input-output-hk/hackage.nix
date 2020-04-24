{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hpygments"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "David Lazar <lazard@csail.mit.edu>";
      author = "David Lazar";
      homepage = "https://github.com/davidlazar/hpygments";
      url = "";
      synopsis = "Highlight source code using Pygments";
      description = "Highlight source code using Pygments <http://pygments.org>. This package\ndepends on Pygments and its accompanying @pygmentize@ script.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."process-extras" or ((hsPkgs.pkgs-errors).buildDepError "process-extras"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          ];
        buildable = true;
        };
      };
    }