{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "load-balancing"; version = "1.0.1.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "rowens@sumall.com";
      author = "Rick Owens";
      homepage = "https://github.com/SumAll/haskell-load-balancing";
      url = "";
      synopsis = "Client-side load balancing utilities.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.PSQueue)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hslogger)
          (hsPkgs.stm)
          ];
        };
      };
    }