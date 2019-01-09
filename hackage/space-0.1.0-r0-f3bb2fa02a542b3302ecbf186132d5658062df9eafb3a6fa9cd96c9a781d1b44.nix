{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "space"; version = "0.1.0"; };
      license = "Apache-2.0";
      copyright = "2017 XT";
      maintainer = "e@xtendo.org";
      author = "XT";
      homepage = "https://github.com/xtendo-org/space#readme";
      url = "";
      synopsis = "Experimental library";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.directory)
          (hsPkgs.http-date)
          (hsPkgs.http-types)
          (hsPkgs.lucid)
          (hsPkgs.memory)
          (hsPkgs.network)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.base)
          ];
        };
      tests = {
        "space-test" = { depends = [ (hsPkgs.base) (hsPkgs.space) ]; };
        };
      };
    }