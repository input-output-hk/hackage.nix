{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-form-bootstrap4"; version = "1.0.1"; };
      license = "MIT";
      copyright = "© ncaq";
      maintainer = "ncaq@ncaq.net";
      author = "ncaq";
      homepage = "https://github.com/ncaq/yesod-form-bootstrap4#readme";
      url = "";
      synopsis = "renderBootstrap4";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.shakespeare)
          (hsPkgs.text)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-form)
          ];
        };
      };
    }