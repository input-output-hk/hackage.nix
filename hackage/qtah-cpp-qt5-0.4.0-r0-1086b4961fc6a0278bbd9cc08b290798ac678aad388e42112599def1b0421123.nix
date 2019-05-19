{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = { name = "qtah-cpp-qt5"; version = "0.4.0"; };
      license = "LGPL-3.0-only";
      copyright = "Copyright 2015-2018 The Qtah Authors.";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/qtah";
      url = "";
      synopsis = "Qt bindings for Haskell - C++ library";
      description = "Qtah is a set of Qt bindings for Haskell.  This package contains the C++ side\nof the bindings.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process))
        ];
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.process) (hsPkgs.qtah-generator) ];
        };
      };
    }