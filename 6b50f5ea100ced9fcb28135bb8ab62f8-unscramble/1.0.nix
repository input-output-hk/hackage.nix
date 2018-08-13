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
        name = "unscramble";
        version = "1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Joel Taylor <me@joelt.io>,\nDevyn Cairns <devyn.cairns@gmail.com>";
      author = "Joel Taylor, Devyn Cairns";
      homepage = "";
      url = "";
      synopsis = "Solve Boggle-like word games";
      description = "Solve Boggle-like word games";
      buildType = "Simple";
    };
    components = {
      exes = {
        "unscramble" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.optparse-applicative)
            (hsPkgs.stream-fusion)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }