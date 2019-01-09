{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "iterm-show"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Luke Clifton";
      maintainer = "lukec@themk.net";
      author = "Luke Clifton";
      homepage = "https://github.com/luke-clifton/iterm-show";
      url = "";
      synopsis = "Enable graphical display of images inline on some terminals";
      description = "Enable graphical display of images inline on some terminals.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          ];
        };
      exes = {
        "it2-show" = {
          depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.iterm-show) ];
          };
        };
      };
    }