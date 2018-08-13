{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "gsasl";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "";
      url = "";
      synopsis = "Bindings for GNU SASL";
      description = "";
      buildType = "Simple";
    };
    components = {
      "gsasl" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs.gsasl) ];
        pkgconfig = [
          (pkgconfPkgs.libgsasl)
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }