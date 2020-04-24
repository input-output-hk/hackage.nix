{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "iterm-show-diagrams"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Luke Clifton";
      maintainer = "lukec@themk.net";
      author = "Luke Clifton";
      homepage = "https://github.com/luke-clifton/iterm-show-diagrams";
      url = "";
      synopsis = "Orphan Show instances for diagrams package that render inline in some terminals";
      description = "This package provides orphan Show instances for the QDiagram type from\nthe diagrams package. This allows showing images from the GHCi prompt, which\nis really handy for development and experimentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          (hsPkgs."iterm-show" or ((hsPkgs.pkgs-errors).buildDepError "iterm-show"))
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."diagrams-rasterific" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-rasterific"))
          ];
        buildable = true;
        };
      };
    }