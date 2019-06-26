{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; bytestring-in-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "regex-base"; version = "0.72.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2006, Christopher Kuklewicz";
      maintainer = "TextRegexLazy@personal.mightyreason.com";
      author = "Christopher Kuklewicz";
      homepage = "http://sourceforge.net/projects/lazy-regex";
      url = "";
      synopsis = "Replaces/Enhances Text.Regex";
      description = "Interface API for regex-posix,pcre,parsec,dfa";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([ (hsPkgs.base) ] ++ (if flags.split-base
          then [ (hsPkgs.base) (hsPkgs.array) ]
          else [ (hsPkgs.base) ])) ++ (if flags.bytestring-in-base
          then [ (hsPkgs.base) ]
          else [ (hsPkgs.base) (hsPkgs.bytestring) ]);
        };
      };
    }