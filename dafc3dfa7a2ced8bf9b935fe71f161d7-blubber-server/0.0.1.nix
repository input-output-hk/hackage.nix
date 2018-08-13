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
        name = "blubber-server";
        version = "0.0.1";
      };
      license = "AGPL-3.0-only";
      copyright = "(c) plaimi 2015";
      maintainer = "blubber@plaimi.net";
      author = "plaimi";
      homepage = "https://secure.plaimi.net/games/blubber.html";
      url = "";
      synopsis = "The blubber server, serves blubber clients.";
      description = "The blubber server. blubber is an arcade game in\nwhich the player tries to build the biggest blob\nby blubberping the other blobs before they\nblubber the player's blob.";
      buildType = "Custom";
    };
    components = {
      "blubber-server" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.random)
        ];
      };
      exes = {
        "blubber-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blubber-server)
            (hsPkgs.Cabal)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.data-default-class)
            (hsPkgs.network)
            (hsPkgs.pandoc)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.scotty)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }