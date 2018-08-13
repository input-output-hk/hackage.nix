{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "extract-dependencies";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "2015 André Barnabá";
      maintainer = "asakeron@gmail.com";
      author = "André Barnabá";
      homepage = "https://github.com/yamadapc/stack-run-auto/extract-dependencies";
      url = "";
      synopsis = "Given a hackage package outputs the list of its dependencies.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "extract-dependencies" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.containers)
          (hsPkgs.Cabal)
          (hsPkgs.package-description-remote)
        ];
      };
      exes = {
        "extract-dependencies" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.containers)
            (hsPkgs.Cabal)
            (hsPkgs.package-description-remote)
          ];
        };
      };
    };
  }