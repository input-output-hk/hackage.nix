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
      specVersion = "1.8";
      identifier = {
        name = "haxparse";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "me@joelt.io";
      author = "Joel Taylor";
      homepage = "https://github.com/joelteon/haxparse";
      url = "";
      synopsis = "Readable HaxBall replays";
      description = "Provides an interface for parsing HaxBall replays.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.data-default)
          (hsPkgs.lens)
          (hsPkgs.optparse-applicative)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.utf8-string)
          (hsPkgs.zlib)
        ];
      };
      exes = {
        "haxparse" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.data-default)
            (hsPkgs.lens)
            (hsPkgs.optparse-applicative)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.split)
            (hsPkgs.template-haskell)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
            (hsPkgs.zlib)
          ];
        };
      };
    };
  }