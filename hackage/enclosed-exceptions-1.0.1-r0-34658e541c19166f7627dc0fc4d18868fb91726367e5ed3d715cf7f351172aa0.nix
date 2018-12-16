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
        name = "enclosed-exceptions";
        version = "1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jmacristovao@gmail.com, michael@snoyman.com";
      author = "Michael Snoyman, João Cristóvão";
      homepage = "https://github.com/jcristovao/enclosed-exceptions";
      url = "";
      synopsis = "Catching all exceptions from within an enclosed computation";
      description = "Catching all exceptions raised within an enclosed computation,\nwhile remaining responsive to (external) asynchronous exceptions.\nFor more information on the technique, please see:\n<https://www.fpcomplete.com/user/snoyberg/general-haskell/exceptions/catching-all-exceptions>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.async)
          (hsPkgs.deepseq)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.async)
            (hsPkgs.deepseq)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
          ];
        };
      };
    };
  }