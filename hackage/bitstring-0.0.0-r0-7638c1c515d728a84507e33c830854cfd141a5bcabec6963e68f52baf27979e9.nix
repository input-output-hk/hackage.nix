{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; withquickcheck = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "bitstring"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Lazy bit strings";
      description = "Lazy bit strings, built on the top of bytestrings.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([ (hsPkgs.bytestring) ] ++ [
          (hsPkgs.base)
          ]) ++ (pkgs.lib).optional (flags.withquickcheck) (hsPkgs.QuickCheck);
        };
      };
    }