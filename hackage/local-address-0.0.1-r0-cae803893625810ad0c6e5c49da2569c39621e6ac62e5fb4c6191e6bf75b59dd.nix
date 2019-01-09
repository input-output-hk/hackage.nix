{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "local-address"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://bitbucket.org/khibino/haskell-local-address";
      url = "";
      synopsis = "Functions to get local interface address";
      description = "This package includes small functions to get local interface address.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.network) ]; };
      };
    }