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
      specVersion = "0";
      identifier = {
        name = "ftshell";
        version = "0.3.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "voigt@tcs.inf.tu-dresden.de";
      author = "Sascha Boehme";
      homepage = "";
      url = "";
      synopsis = "Shell interface to the FreeTheorems library.";
      description = "The ftshell is a shell-based user interface to interact with the\nfree-theorems library. It offers all possibilities provided by\nthat library to generate free theorems from Haskell type\nexpressions.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ftshell" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.Shellac)
            (hsPkgs.Shellac-readline)
            (hsPkgs.free-theorems)
            (hsPkgs.pretty)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }