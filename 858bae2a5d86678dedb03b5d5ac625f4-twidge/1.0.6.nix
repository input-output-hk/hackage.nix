{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      withbitly = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "twidge";
        version = "1.0.6";
      };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2006-2010 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/twidge";
      url = "";
      synopsis = "Unix Command-Line Twitter and Identica Client";
      description = "twidge is a client for microblogging sites such as Twitter and\nIdentica (identi.ca). Microblogging sites let you post short\none-paragraph updates, follow the updates that your friends post, and\ninteract with everyone in the site in a conversation style.\n\ntwidge is a client to make working with microblogging sites faster\nand easier. It is extremely versatile, and can be customized to work\nthe way you want to work, and combined with other tools to do just\nabout anything.\n\ntwidge can be used quite nicely interactively from the shell. It is\nuseful directly as-is, and with simple shell aliases can make a\nhighly efficient system to do exactly what you want. It is perfectly\ncapable of being your only client for microblogging.\n\ntwidge also can be used in an automated way, via cron(1), or it can\neven integrate with your email system.\n\nA full list of twidge features, along with numerous suggestions on\nhow to use it, can be found at the twidge website at\nhttp://software.complete.org/twidge.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "twidge" = {
          depends  = [
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            (hsPkgs.MissingH)
            (hsPkgs.mtl)
            (hsPkgs.base)
            (hsPkgs.HaXml)
            (hsPkgs.HaXml)
            (hsPkgs.hslogger)
            (hsPkgs.hoauth)
            (hsPkgs.ConfigFile)
            (hsPkgs.directory)
            (hsPkgs.HSH)
            (hsPkgs.regex-posix)
            (hsPkgs.utf8-string)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.curl)
          ] ++ pkgs.lib.optional (_flags.withbitly) (hsPkgs.Bitly);
        };
      };
    };
  }