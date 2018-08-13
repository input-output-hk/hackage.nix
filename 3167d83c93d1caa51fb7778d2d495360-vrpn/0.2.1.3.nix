{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      quatstatic = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "vrpn";
        version = "0.2.1.3";
      };
      license = "MIT";
      copyright = "(c) 2015 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/bwbush/vrpn";
      url = "https://bitbucket.org/bwbush/vrpn/vrp-0.2.1.3.tar.gz";
      synopsis = "Bindings to VRPN.";
      description = "See \\<<https://github.com/vrpn/vrpn/wiki>\\> for information on VRPN.  This has been tested using VRPN 07.30 on Linux.\n\nIf the VRPN libraries are static and this package is used from Template Haskell, then the package needs to be configured with the QuatStatic flag.";
      buildType = "Simple";
    };
    components = {
      "vrpn" = {
        depends  = [ (hsPkgs.base) ];
        libs = if _flags.quatstatic
          then [
            (pkgs."vrpn")
            (pkgs."quat")
            (pkgs."stdc++")
          ]
          else [
            (pkgs."vrpn")
            (pkgs."stdc++")
          ];
      };
      exes = {
        "test-vrpn" = {
          depends  = [ (hsPkgs.base) ];
          libs = [
            (pkgs."vrpn")
            (pkgs."stdc++")
          ];
        };
      };
    };
  }