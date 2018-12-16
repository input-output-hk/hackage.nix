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
        name = "n2o-web";
        version = "0.11.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Marat Khafizov (c)";
      maintainer = "xafizoff@gmail.com";
      author = "Marat Khafizov";
      homepage = "https://github.com/xafizoff/n2o-hs#readme";
      url = "";
      synopsis = "N2O adapter for WebSockets";
      description = "Poor man's WebSocket and HTTP static servers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.n2o)
          (hsPkgs.n2o-protocols)
          (hsPkgs.websockets)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.bert)
          (hsPkgs.attoparsec)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.fmt)
          (hsPkgs.base64-bytestring)
        ];
      };
    };
  }