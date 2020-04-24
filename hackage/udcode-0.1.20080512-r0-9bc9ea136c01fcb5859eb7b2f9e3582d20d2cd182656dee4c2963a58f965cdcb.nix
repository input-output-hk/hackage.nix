{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "udcode"; version = "0.1.20080512"; };
      license = "BSD-3-Clause";
      copyright = "Mark Jason Dominus, Walt \"BMeph\" Rorie-Baety";
      maintainer = "black.meph@gmail.com";
      author = "Walt \"BMeph\" Rorie-Baety";
      homepage = "";
      url = "";
      synopsis = "Uniquely-decodeable codes";
      description = "A Haskell-based write-up of Mark Jason Dominus' perl UDCode package.";
      buildType = "Simple";
      };
    components = { "library" = { buildable = true; }; };
    }