{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-routes-typescript"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "max@docmunch.com";
      author = "Max Cantor";
      homepage = "https://github.com/docmunch/yesod-routes-typescript";
      url = "";
      synopsis = "generate TypeScript routes for Yesod";
      description = "parse the Yesod routes data structure and generate routes that can be used in typescript";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.classy-prelude)
          (hsPkgs.system-fileio)
          (hsPkgs.text)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-routes)
          ];
        };
      };
    }