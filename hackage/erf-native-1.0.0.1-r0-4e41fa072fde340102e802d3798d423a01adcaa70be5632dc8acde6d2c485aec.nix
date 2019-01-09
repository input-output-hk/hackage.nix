{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "erf-native"; version = "1.0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "http://code.haskell.org/~mokus/erf-native";
      url = "";
      synopsis = "Native Haskell implementation of the interface from the erf package";
      description = "Native Haskell implementation of the interface from the erf package.\nI have had problems getting the erf package to work on Windows systems,\nso I'm throwing this one out there.  It incorporates code translated\nfrom GSL's C source, and so is licensed under the GPL.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.polynomial) ]; };
      };
    }