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
        name = "gotta-go-fast";
        version = "0.1.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "c.oakley108@gmail.com";
      author = "Callum Oakley";
      homepage = "https://github.com/hot-leaf-juice/gotta-go-fast";
      url = "";
      synopsis = "A command line utility for practicing typing";
      description = "A command line utility for practicing typing and measuring your WPM and accuracy. See the project <https://github.com/hot-leaf-juice/gotta-go-fast/blob/master/README.md README> for details.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gotta-go-fast" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.random)
            (hsPkgs.time)
            (hsPkgs.vty)
          ];
        };
      };
    };
  }