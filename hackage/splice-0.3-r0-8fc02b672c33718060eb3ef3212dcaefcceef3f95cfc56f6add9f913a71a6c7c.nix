{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { portable = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "splice"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2012 Cetin Sert";
      maintainer = "Cetin Sert <fusion@corsis.eu>";
      author = "Cetin Sert <fusion@corsis.eu>";
      homepage = "http://fusion.corsis.eu";
      url = "";
      synopsis = "Socket to Socket Data Splicing (supports all operating systems)";
      description = "A library that implements most efficient socket to socket\ndata transfer loops for proxy servers on each operating system.\n\nOn Linux, it uses and exposes the zero-copy @splice()@ system\ncall: <http://kerneltrap.org/node/6505>.\n\nOn other operating systems, it currently falls back to a portable\nHaskell implementation.\n\n[Corsis Research]\nThis work is funded by Corsis Research\n(<http://corsis.eu>) for the development of\n\n[PortFusion \\]-\\[ayabusa (はやぶさ) (Hayabusa)]\n– German-Japanese joint research project for building the\nsimplest and most concise high-performance distributed reverse /\nforward proxy possible\n(<https://sourceforge.net/p/portfusion/wiki/RoadMap/>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if system.isLinux && !flags.portable
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ];
        buildable = true;
        };
      };
    }