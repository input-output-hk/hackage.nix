{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hood-off"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Pepe Iborra <pepeiborra@gmail.com>";
      author = "Pepe Iborra";
      homepage = "";
      url = "";
      synopsis = "Dummy package to disable Hood without having to remove all the calls to observe";
      description = "";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }