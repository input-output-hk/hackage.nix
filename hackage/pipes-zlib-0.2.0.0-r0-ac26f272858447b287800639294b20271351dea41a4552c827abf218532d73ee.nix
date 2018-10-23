{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "pipes-zlib";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Paolo Capriotti 2012,\nRenzo Carbonara 2013";
      maintainer = "renzocarbonaraλgmail.com";
      author = "Renzo Carbonara, Paolo Capriotti";
      homepage = "https://github.com/k0001/pipes-zlib";
      url = "";
      synopsis = "Pipes to deal with zlib compressed data.";
      description = "Pipes to deal with zlib compressed data.";
      buildType = "Simple";
    };
    components = {
      "pipes-zlib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.pipes)
          (hsPkgs.bytestring)
          (hsPkgs.zlib)
          (hsPkgs.zlib-bindings)
        ];
      };
    };
  }