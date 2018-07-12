{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "enclosed-exceptions";
          version = "1.0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jmacristovao@gmail.com, michael@snoyman.com";
        author = "Michael Snoyman, João Cristóvão";
        homepage = "https://github.com/jcristovao/enclosed-exceptions";
        url = "";
        synopsis = "Catching all exceptions from within an enclosed computation";
        description = "Catching all exceptions raised within an enclosed computation,\nwhile remaining responsive to (external) asynchronous exceptions.";
        buildType = "Simple";
      };
      components = {
        "enclosed-exceptions" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.async
            hsPkgs.deepseq
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.lifted-base
              hsPkgs.monad-control
              hsPkgs.async
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.transformers
            ];
          };
        };
      };
    }