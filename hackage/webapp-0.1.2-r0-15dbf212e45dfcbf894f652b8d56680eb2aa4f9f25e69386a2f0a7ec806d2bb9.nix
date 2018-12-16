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
      specVersion = "1.10";
      identifier = {
        name = "webapp";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "(c) 2015 Nathaniel Symer";
      maintainer = "Nathaniel Symer <nate@symer.io>";
      author = "Nathaniel Symer <nate@symer.io>";
      homepage = "https://github.com/fhsjaagshs/webapp";
      url = "";
      synopsis = "Haskell web scaffolding using Scotty, WAI, and Warp";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.scotty)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.warp)
          (hsPkgs.warp-tls)
          (hsPkgs.network)
          (hsPkgs.streaming-commons)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.attoparsec)
          (hsPkgs.unix)
          (hsPkgs.fsnotify)
          (hsPkgs.filepath)
          (hsPkgs.hashtables)
          (hsPkgs.base16-bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.zlib)
          (hsPkgs.cryptohash)
          (hsPkgs.text)
          (hsPkgs.hjsmin)
          (hsPkgs.css-text)
          (hsPkgs.mime-types)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.optparse-applicative)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
          (hsPkgs.buildPackages.happy)
          (hsPkgs.buildPackages.alex)
        ];
      };
    };
  }