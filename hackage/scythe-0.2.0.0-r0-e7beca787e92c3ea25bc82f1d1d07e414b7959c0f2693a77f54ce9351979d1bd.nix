{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "scythe";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "David Johnson (c) 2018";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "https://github.com/dmjio/scythe";
      url = "";
      synopsis = "Fast CSV lexing on ByteString";
      description = "RFC-4180 compliant CSV lexing on ByteString";
      buildType = "Simple";
    };
    components = {
      "scythe" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.text)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
        ];
      };
      exes = {
        "scythe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.scythe)
          ];
        };
      };
    };
  }