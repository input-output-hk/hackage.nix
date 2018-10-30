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
      specVersion = "1.2";
      identifier = {
        name = "testpattern";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/testpattern";
      url = "";
      synopsis = "Display a monitor test pattern";
      description = "Display a monitor test pattern.\nUseful for callibrating projectors before giving talks.\n\nTo display the test pattern:\n\n\$ testpattern\n\nYou should see something like this:\n\n<http://code.haskell.org/~dons/images/test-pattern-1024x768-thumb.png>\n\nTo close the window, type 'q'.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "testpattern" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gtk)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }