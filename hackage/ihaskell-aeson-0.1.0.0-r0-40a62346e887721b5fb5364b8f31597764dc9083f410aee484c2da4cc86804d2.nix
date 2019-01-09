{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = { name = "ihaskell-aeson"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "andrew.gibiansky@gmail.com";
      author = "Andrew Gibiansky";
      homepage = "http://www.github.com/gibiansky/IHaskell-Display";
      url = "";
      synopsis = "IHaskell display instances for Aeson";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.here)
          (hsPkgs.classy-prelude)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.ihaskell)
          ];
        };
      };
    }