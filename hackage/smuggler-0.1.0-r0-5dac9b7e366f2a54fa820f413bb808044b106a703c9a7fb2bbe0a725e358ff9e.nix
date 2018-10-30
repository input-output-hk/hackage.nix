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
        version = "0.1.0";
      };
      license = "MPL-2.0";
      copyright = "2018 Kowainik";
      maintainer = "xrom.xkov@gmail.com";
      author = "Kowainik";
      homepage = "https://github.com/kowainik/smuggler";
      url = "";
      synopsis = "GHC Source Plugin that helps to manage imports";
      description = "== Usage\n\nAdd @smuggler@ to the dependencies of your project.\n\nThen add the following options: @-fplugin=Smuggler.Plugin@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
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
        "play-smuggler" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.smuggler)
          ];
        };
      };
      tests = {
        "smuggler-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.smuggler)
          ];
        };
      };
    };
  }