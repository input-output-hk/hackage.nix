{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hosts-server";
        version = "0.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "yihuang (yi.codeplayer@gmail.com)";
      author = "yihuang (yi.codeplayer@gmail.com)";
      homepage = "https://github.com/yihuang/hosts-server";
      url = "";
      synopsis = "An dns server which is extremely easy to config.";
      description = "An dns server which is extremely easy to config, you can config it like your hosts file.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hosts-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.data-default)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.iproute)
            (hsPkgs.dns)
          ];
        };
      };
    };
  }