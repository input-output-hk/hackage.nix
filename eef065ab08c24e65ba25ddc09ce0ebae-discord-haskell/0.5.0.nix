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
        version = "0.5.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ksfish5@gmail.com";
      author = "Karl";
      homepage = "https://github.com/aquarial/discord-haskell";
      url = "";
      synopsis = "Discord bot library for Haskell";
      description = "Functions and data types to write discord bots.\nSee docs: <https://discordapp.com/developers/docs/reference>";
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