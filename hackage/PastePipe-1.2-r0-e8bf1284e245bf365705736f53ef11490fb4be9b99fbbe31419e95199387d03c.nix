{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "PastePipe"; version = "1.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "creswick@gmail.com";
      author = "Rogan Creswick";
      homepage = "http://pastepipe.googlecode.com/";
      url = "";
      synopsis = "CLI for pasting to hpaste.org";
      description = "PastePipe reads from standard in and posts to hpaste.org.\nIt will auto-detect your username, but that can be\noverridden with command line options (-u username)\nTitles are set with -t, language with -l.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pastepipe" = {
          depends = [ (hsPkgs.base) (hsPkgs.HTTP) (hsPkgs.network) ];
          };
        };
      };
    }