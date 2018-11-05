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
        name = "n2o-protocols";
        version = "0.11.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Marat Khafizov (c)";
      maintainer = "xafizoff@gmail.com";
      author = "Marat Khafizov";
      homepage = "https://github.com/xafizoff/n2o#readme";
      url = "";
      synopsis = "N2O Protocols Starter Pack";
      description = "N2O Protocols: Interfaces and Implementations";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.n2o)
          (hsPkgs.nitro)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.bert)
          (hsPkgs.containers)
          (hsPkgs.base64-bytestring)
        ];
      };
    };
  }