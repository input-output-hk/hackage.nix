{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "leetify"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      author = "Dimitri Sabadie";
      homepage = "";
      url = "";
      synopsis = "Leetify text";
      description = "Leetify a string from the command line interface and\noutput it on stdout";
      buildType = "Simple";
      };
    components = {
      exes = {
        "leetify" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
        };
      };
    }