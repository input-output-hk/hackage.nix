{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "semantic"; version = "0.0.0"; };
      license = "MIT";
      copyright = "(c) 2016-2019 GitHub, Inc.";
      maintainer = "opensource+semantic@github.com";
      author = "The Semantic authors";
      homepage = "http://github.com/github/semantic";
      url = "";
      synopsis = "Framework and service for analyzing and diffing untrusted code.";
      description = "Semantic provides a framework for analysis, interpretation, and diffing of arbitrary, untrusted parse trees.\n\nThis is a placeholder package pending a full Hackage release.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }