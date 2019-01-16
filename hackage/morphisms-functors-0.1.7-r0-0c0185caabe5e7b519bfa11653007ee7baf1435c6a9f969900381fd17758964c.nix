{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "morphisms-functors"; version = "0.1.7"; };
      license = "MIT";
      copyright = "Copyright (c) 2018 Murat Kasimov";
      maintainer = "Murat Kasimov <iokasimov.m@gmail.com>";
      author = "Murat Kasimov";
      homepage = "https://github.com/iokasimov/morphisms-functors";
      url = "";
      synopsis = "Functors, theirs compositions and transformations";
      description = "Attempt to define categorical abstractions in more robust and useful way.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.morphisms) ]; }; };
    }