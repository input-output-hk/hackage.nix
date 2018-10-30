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
        name = "funbot";
        version = "0.2";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "The Freepost community, see AUTHORS file";
      homepage = "https://notabug.org/fr33domlover/funbot/";
      url = "";
      synopsis = "IRC bot for fun, learning, creativity and collaboration.";
      description = "One day an idea came up on the #freepost IRC channel: We didn't need much of\nthe serious features IRC bots provide, but we could develop an IRC bot\ncollaboratively, for fun and for learning new skills and languages! I also\nthought this is a great chance for people to quickly see their code in real\nuse, which is motivating when learning programming, and it's a chance to\nintroduce Haskell to the community.\n\nWhile the bot is made for and by the <https://freepo.st Freepost> community,\nit is fully intended for use any anyone else! For experienced Haskell\ndevelopers, this bot can perhaps provide space for creativity and custom\nadvanced plugins and features.\n\nSince this bot is meant for collaborative development while really running\nit, the running instance in @#freepost@ is built from the git repository.\nOccasionally releases will be made to Hackage. If you want to be sure you\nhave all the latest features, check out the git repository (and/or ask us to\nmake a release if you think it's been long enough).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "funbot" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.feed)
            (hsPkgs.feed-collect)
            (hsPkgs.funbot-ext-events)
            (hsPkgs.HTTP)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-listen)
            (hsPkgs.irc-fun-bot)
            (hsPkgs.irc-fun-color)
            (hsPkgs.json-state)
            (hsPkgs.network-uri)
            (hsPkgs.settings)
            (hsPkgs.tagsoup)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.time-interval)
            (hsPkgs.time-units)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.vcs-web-hook-parse)
          ];
        };
      };
    };
  }