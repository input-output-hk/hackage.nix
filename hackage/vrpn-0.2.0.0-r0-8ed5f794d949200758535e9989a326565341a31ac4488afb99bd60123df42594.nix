{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "vrpn"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "(c) 2015 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/bwbush/vrpn";
      url = "https://bitbucket.org/bwbush/vrpn/vrp-0.2.0.0.tar.gz";
      synopsis = "Bindings to VRPN.";
      description = "See \\<<https://github.com/vrpn/vrpn/wiki>\\> for information on VRPN.  This has been tested using VRPN 07.30 on Linux.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
        libs = [ (pkgs."vrpn") (pkgs."stdc++") ];
        };
      exes = {
        "test-vrpn" = {
          depends = [ (hsPkgs.base) ];
          libs = [ (pkgs."vrpn") (pkgs."stdc++") ];
          };
        };
      };
    }