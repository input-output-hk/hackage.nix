{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "iterm-show-JuicyPixels"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Luke Clifton";
      maintainer = "lukec@themk.net";
      author = "Luke Clifton";
      homepage = "https://github.com/luke-clifton/iterm-show-JuicyPixels";
      url = "";
      synopsis = "Orphan Show instances for JuciyPixels image types.";
      description = "This package provides Show instances for graphical types in JuicyPixels.\nThis allows them to be shown in a terminal that is supported by the\niterm-show library. Especially handy when used in GHCi.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.iterm-show) (hsPkgs.JuicyPixels) ];
        };
      };
    }