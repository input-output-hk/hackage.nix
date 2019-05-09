{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "liboath-hs"; version = "0.0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "2017 Matt Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matt Parsons";
      homepage = "https://github.com/parsonsmatt/liboath-hs#readme";
      url = "";
      synopsis = "Bindings to liboath";
      description = "See README for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.inline-c)
          (hsPkgs.safe-exceptions)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          ];
        libs = [ (pkgs."oath") ];
        pkgconfig = [ (pkgconfPkgs."liboath") ];
        };
      exes = {
        "oathtool-hs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.liboath-hs)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            ];
          };
        };
      tests = {
        "liboath-hs-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.liboath-hs) ];
          };
        };
      };
    }