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
        name = "monad-timing";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "me@jude.bio";
      author = "Jude Taylor";
      homepage = "https://github.com/pikajude/monad-timing";
      url = "";
      synopsis = "Monad transformer for recording timing events";
      description = "Monad transformer for recording timing events";
      buildType = "Simple";
    };
    components = {
      "monad-timing" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }