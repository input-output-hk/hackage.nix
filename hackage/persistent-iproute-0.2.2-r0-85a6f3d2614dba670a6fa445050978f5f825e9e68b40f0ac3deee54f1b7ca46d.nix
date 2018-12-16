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
        name = "persistent-iproute";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lanablack@amok.cc";
      author = "Lana Black";
      homepage = "https://github.com/greydot/persistent-iproute";
      url = "";
      synopsis = "Persistent instances for types in iproute";
      description = "Persistent instances and operators for types in iproute to use with PostgreSQL.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-iproute)
          (hsPkgs.bytestring)
          (hsPkgs.iproute)
          (hsPkgs.http-api-data)
          (hsPkgs.path-pieces)
          (hsPkgs.persistent)
          (hsPkgs.text)
        ];
      };
    };
  }