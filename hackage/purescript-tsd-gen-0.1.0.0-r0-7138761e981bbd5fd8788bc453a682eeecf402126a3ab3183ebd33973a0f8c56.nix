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
        name = "purescript-tsd-gen";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 ARATA Mizuki";
      maintainer = "ARATA Mizuki <minorinoki@gmail.com>";
      author = "ARATA Mizuki <minorinoki@gmail.com>";
      homepage = "https://github.com/minoki/purescript-tsd-gen#readme";
      url = "";
      synopsis = "TypeScript Declaration File (.d.ts) generator for PureScript";
      description = "Please see the README on Github at <https://github.com/minoki/purescript-tsd-gen#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.purescript)
          (hsPkgs.text)
        ];
      };
      exes = {
        "purs-tsd-gen" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.purescript)
            (hsPkgs.purescript-tsd-gen)
            (hsPkgs.text)
          ];
        };
      };
    };
  }