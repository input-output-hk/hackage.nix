{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "charade"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "doug.beardsley@soostone.com";
      author = "Doug Beardsley";
      homepage = "https://github.com/soostone/charade";
      url = "";
      synopsis = "Rapid prototyping websites with Snap and Heist";
      description = "Charade is a tool for rapid website prototyping using Heist and Snap.\nCharade-generated sites can easily be dropped into Snap applications\nand work out of the box with no modification.\n\nThe main thing provided by this package is the charade executable that\nserves your prototype sites.  The library provided contains a Heist splice\nthat you use to make all evidence of charade disappear in your production\napp.\n\nFor more information, see the @README@: <https://github.com/soostone/charade/blob/master/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.configurator)
          (hsPkgs.containers)
          (hsPkgs.heist)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.snap)
          (hsPkgs.text)
          (hsPkgs.xmlhtml)
          ];
        };
      exes = {
        "charade" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.configurator)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.lens)
            (hsPkgs.heist)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.snap)
            (hsPkgs.snap-core)
            (hsPkgs.snap-extras)
            (hsPkgs.snap-server)
            (hsPkgs.text)
            (hsPkgs.xmlhtml)
            ];
          };
        };
      };
    }