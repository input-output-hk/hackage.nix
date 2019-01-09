{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "htssets"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kelemzol@elte.hu";
      author = "Zoltan Kelemen";
      homepage = "https://github.com/kelemzol/htlset";
      url = "";
      synopsis = "Heterogenous Sets";
      description = "HtsSet is a Heterogenous Set wich can provide storing values with different type.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      };
    }