{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "asynchronous-exceptions"; version = "1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "roma@ro-che.info";
      author = "Roman Cheplyaka";
      homepage = "https://github.com/feuerbach/asynchronous-exceptions";
      url = "";
      synopsis = "Distinguish between synchronous and asynchronous exceptions";
      description = "Distinguish between synchronous and asynchronous exceptions";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }