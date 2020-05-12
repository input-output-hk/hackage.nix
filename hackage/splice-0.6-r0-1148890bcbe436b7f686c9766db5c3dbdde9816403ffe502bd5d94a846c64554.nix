{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { portable = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "splice"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2012 Cetin Sert";
      maintainer = "Cetin Sert <fusion@corsis.eu>";
      author = "Cetin Sert <fusion@corsis.eu>";
      homepage = "http://corsis.github.com/splice/";
      url = "";
      synopsis = "Cross-platform Socket to Socket Data Splicing";
      description = "A library that implements most efficient socket to socket\ndata transfer loops for proxy servers on each operating system.\n\nOn GNU/Linux, it uses and exposes the zero-copy @splice()@ system\ncall: <http://kerneltrap.org/node/6505>.\n\nOn other operating systems, it falls back to a portable Haskell\nimplementation.\n\n[Framework]\nThis work is funded by Corsis Research\n(<http://corsis.eu>) for the development of\nPortFusion \\]-\\[ayabusa (はやぶさ) (Hayabusa) – German-Japanese\njoint research project for building the simplest and most concise\nhigh-performance distributed reverse / forward proxy application\npossible on commodity hardware and operating systems\n(<https://sourceforge.net/p/portfusion/wiki/RoadMap/>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if system.isLinux && !flags.portable
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
        buildable = true;
        };
      };
    }