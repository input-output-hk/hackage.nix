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
      specVersion = "1.6";
      identifier = {
        name = "twisty";
        version = "0.1.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright 2011 Google Inc.";
      maintainer = "leadpipe@google.com";
      author = "Luke Blanshard";
      homepage = "";
      url = "";
      synopsis = "Simulator of twisty puzzles à la Rubik's Cube";
      description = "Library with tools for simulating Rubik's Cube and similar puzzles.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.data-memocombinators)
          (hsPkgs.MonadRandom)
          (hsPkgs.parallel)
        ];
      };
    };
  }