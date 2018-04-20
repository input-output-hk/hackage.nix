{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "erf-native";
          version = "1.0.0.0";
        };
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
        erf-native = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
        };
      };
    }