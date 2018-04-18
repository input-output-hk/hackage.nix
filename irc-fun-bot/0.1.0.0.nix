{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "irc-fun-bot";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
        maintainer = "fr33domlover@riseup.net";
        author = "fr33domlover";
        homepage = "http://rel4tion.org/projects/irc-fun-bot/";
        url = "";
        synopsis = "Very simple library for writing fun IRC bots.";
        description = "One day an idea came up on the #freepost IRC channel: We didn't need much of\nthe serious features IRC bots provide, but we could develop an IRC bot\ncollaboratively, for fun and for learning new skills and languages! I also\nthought this is a great chance for people to quickly see their code in real\nuse, which is motivating when learning programming, and it's a chance to\nintroduce Haskell to the community.\n\nAnd so, this library was started. The API is inspired by the @Irc@ package\nand some other IRC client related packages.";
        buildType = "Simple";
      };
      components = {
        irc-fun-bot = {
          depends  = [
            hsPkgs.base
            hsPkgs.irc-fun-client
            hsPkgs.irc-fun-messages
            hsPkgs.transformers
          ];
        };
      };
    }