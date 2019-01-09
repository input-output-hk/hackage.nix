{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "moto"; version = "0.0.2"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "ren@ren!zone";
      author = "Renzo Carbonara";
      homepage = "";
      url = "";
      synopsis = "General purpose migrations library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.moto-internal)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptohash-sha1)
          (hsPkgs.df1)
          (hsPkgs.di-core)
          (hsPkgs.di-df1)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.safe-exceptions)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.pipes)
          (hsPkgs.pipes-attoparsec)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          ];
        };
      sublibs = {
        "moto-internal" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cryptohash-sha1)
            (hsPkgs.df1)
            (hsPkgs.di-df1)
            (hsPkgs.safe-exceptions)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.di)
            (hsPkgs.di-core)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.moto-internal)
            (hsPkgs.moto)
            (hsPkgs.random)
            (hsPkgs.safe-exceptions)
            (hsPkgs.text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.time)
            ];
          };
        };
      };
    }