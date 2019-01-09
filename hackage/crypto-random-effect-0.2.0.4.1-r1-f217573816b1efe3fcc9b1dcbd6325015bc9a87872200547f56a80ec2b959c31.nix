{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "crypto-random-effect"; version = "0.2.0.4.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "tob@butter.sh";
      author = "Tobias Florek";
      homepage = "https://github.com/ibotty/crypto-random-effect";
      url = "";
      synopsis = "A random effect using crypto-random";
      description = "Any help (especially documentation) is welcome";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.crypto-random)
          (hsPkgs.extensible-effects)
          (hsPkgs.securemem)
          (hsPkgs.transformers)
          ];
        };
      };
    }