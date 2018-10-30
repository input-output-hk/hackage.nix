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
      specVersion = "1.10";
      identifier = {
        name = "wai-middleware-static-embedded";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Adam Sandberg Eriksson";
      maintainer = "adam@sandbergericsson.se";
      author = "Adam Sandberg Eriksson";
      homepage = "https://github.com/adamse/network-wai-static-embedded#readme";
      url = "";
      synopsis = "Serve embedded static files as a Wai middleware";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
          (hsPkgs.mime-types)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.http-types)
          (hsPkgs.text)
        ];
      };
    };
  }