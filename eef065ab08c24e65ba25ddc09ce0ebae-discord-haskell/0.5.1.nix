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
        name = "discord-haskell";
        version = "0.5.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ksfish5@gmail.com";
      author = "Karl";
      homepage = "https://github.com/aquarial/discord-haskell";
      url = "";
      synopsis = "Write bots for Discord in Haskell";
      description = "Functions and data types to write discord bots.\nOfficial discord docs <https://discordapp.com/developers/docs/reference>.\n\nSee the project readme for quickstart notes\n<https://github.com/aquarial/discord-haskell#discord-haskell>";
      buildType = "Simple";
    };
    components = {
      "discord-haskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.http-client)
          (hsPkgs.iso8601-time)
          (hsPkgs.MonadRandom)
          (hsPkgs.req)
          (hsPkgs.safe-exceptions)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.websockets)
          (hsPkgs.wuss)
        ];
      };
    };
  }