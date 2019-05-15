{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dvault"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ian@zenhack.net";
      author = "Ian Denhardt";
      homepage = "https://github.com/zenhack/dvault";
      url = "";
      synopsis = "Dead simple password manager";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dvault" = {
          depends = [
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.crypto-rng)
            (hsPkgs.vector)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.base)
            ];
          };
        };
      };
    }