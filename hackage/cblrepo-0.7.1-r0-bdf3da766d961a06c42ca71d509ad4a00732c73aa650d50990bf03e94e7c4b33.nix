{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "cblrepo"; version = "0.7.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2011 Magnus Therning";
      maintainer = "Magnus Therning <magnus@therning.org>";
      author = "Magnus Therning";
      homepage = "";
      url = "";
      synopsis = "Tool to maintain a database of CABAL packages and their dependencies";
      description = "Helper tool for people maintaining a set of CABAL packages for their\ndistribution.  It maintains a database of packages and verifies\ndependencies of the entire set as packages are added or updated.  It also\nmakes it trivial to track packages as new versions are released on Hackage.\nIt can also be used to build source packages for the ArchLinux distribution.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "cblrepo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.Cabal)
            (hsPkgs.json)
            (hsPkgs.bytestring)
            (hsPkgs.tar)
            (hsPkgs.zlib)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.Unixutils)
            (hsPkgs.unix)
            (hsPkgs.ansi-wl-pprint)
            ];
          };
        };
      };
    }