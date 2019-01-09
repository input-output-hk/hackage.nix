{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cityhash"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "as@hacks.yi.org";
      author = "Austin Seipp";
      homepage = "http://github.com/thoughtpolice/hs-cityhash";
      url = "";
      synopsis = "bindings to Google CityHash";
      description = "This package implements a binding to the google CityHash family of hashing functions.\nSee <http://code.google.com/p/cityhash/> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.largeword) ];
        libs = [ (pkgs."stdc++") ];
        };
      };
    }