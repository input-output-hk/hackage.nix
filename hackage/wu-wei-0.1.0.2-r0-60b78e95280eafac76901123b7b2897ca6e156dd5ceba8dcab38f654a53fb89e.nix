{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "wu-wei"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fuzz@kt-22.com";
      author = "Fuzz Leonard";
      homepage = "https://github.com/fuzz/wu-wei";
      url = "";
      synopsis = "Unimportant Unix adminstration tool";
      description = "Minimalist tool for Unix systems administration that strives to be\nunimportant and do nothing, like water.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pao" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.symbolic-link)
            (hsPkgs.unix)
            (hsPkgs.yaml)
            ];
          };
        };
      };
    }