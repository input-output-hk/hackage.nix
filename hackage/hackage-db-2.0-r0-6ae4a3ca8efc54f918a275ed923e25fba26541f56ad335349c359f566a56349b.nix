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
        name = "hackage-db";
        version = "2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons, Alexander Altman, Ben James";
      homepage = "https://github.com/peti/hackage-db#readme";
      url = "";
      synopsis = "Access Hackage's package database via Data.Map";
      description = "This is an early and mostly undocumented release of the 2.x version of hackage-db that's intended mostly for experimenting with and testing of the new API. Porting code from 1.x to 2.x is pretty simple, but if you do that at this point, please expect minor details of this API to change in forthcoming releases. For production code, you are probably better off with the 1.x release for now.\n\nCheck out https://github.com/peti/hackage-db/tree/master/example/ for a collection of simple example programs that demonstrate how to use this code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.tar)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
        ];
      };
      exes = {
        "list-known-versions" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.hackage-db)
            (hsPkgs.bytestring)
          ];
        };
        "show-meta-data" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.hackage-db)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
          ];
        };
        "show-package-versions" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.hackage-db)
          ];
        };
      };
    };
  }