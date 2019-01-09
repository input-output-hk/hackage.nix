{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "terminfo-hs"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Bryan Richter, 2013–2018";
      maintainer = "Bryan Richter <b@chreekat.net>";
      author = "Bryan Richter";
      homepage = "";
      url = "";
      synopsis = "A pure-Haskell (no FFI) module for accessing terminfo databases";
      description = "This module can acquire terminfo databases and query them for terminal\ncapabilities. For details of terminfo, consult the man pages for\nterm(5) and terminfo(5).\nThis package is dead simple, and doesn't do anything fancy with the\ncapabilities themselves. It merely provides a means for accessing them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.errors)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.attoparsec)
          (hsPkgs.containers)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.errors)
            (hsPkgs.QuickCheck)
            (hsPkgs.terminfo-hs)
            ];
          };
        };
      };
    }