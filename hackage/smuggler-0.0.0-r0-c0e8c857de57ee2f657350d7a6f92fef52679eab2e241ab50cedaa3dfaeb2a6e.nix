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
      specVersion = "2.0";
      identifier = {
        name = "smuggler";
        version = "0.0.0";
      };
      license = "MPL-2.0";
      copyright = "2018 Kowainik";
      maintainer = "xrom.xkov@gmail.com";
      author = "Kowainik";
      homepage = "https://github.com/kowainik/smuggler";
      url = "";
      synopsis = "Smuggling";
      description = "GHC compiler plugin which helps to manage imports";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.ghc)
          (hsPkgs.ghc-exactprint)
          (hsPkgs.hash-store)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "smuggler" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.smuggler)
          ];
        };
      };
      tests = {
        "smuggler-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.smuggler)
          ];
        };
      };
    };
  }