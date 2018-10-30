{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { old-base = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "pubsub";
        version = "0.11";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009, Sigbjorn Finne";
      maintainer = "Sigbjorn Finne <sigbjorn.finne@gmail.com>";
      author = "Sigbjorn Finne <sigbjorn.finne@gmail.com>";
      homepage = "http://projects.haskell.org/pubsub/";
      url = "";
      synopsis = "A library for Google/SixApart pubsub hub interaction";
      description = "A package for setting up, sending and receiving PubSub requests to pubsub hubs,\n<http://pubsubhubbub.googlecode.com/svn/trunk/pubsubhubbub-core-0.1.html>\n\nGit repository available at <git://coming.soon/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.feed)
          (hsPkgs.xml)
          (hsPkgs.mime)
          (hsPkgs.utf8-string)
          (hsPkgs.json)
          (hsPkgs.random)
          (hsPkgs.HTTP)
        ] ++ [ (hsPkgs.base) ];
      };
      exes = {
        "pubsub.fcgi" = {
          depends  = [ (hsPkgs.fastcgi) ];
        };
        "feeder" = {};
      };
    };
  }