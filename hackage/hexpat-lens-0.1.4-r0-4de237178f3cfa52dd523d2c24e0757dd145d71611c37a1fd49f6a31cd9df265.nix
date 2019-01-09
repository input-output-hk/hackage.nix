{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hexpat-lens"; version = "0.1.4"; };
      license = "MIT";
      copyright = "(c) 2013, Joseph Abrahamson";
      maintainer = "me@jspha.com";
      author = "Joseph Abrahamson";
      homepage = "https://github.com/tel/hexpat-lens";
      url = "";
      synopsis = "Lenses for Hexpat.";
      description = "A set of lenses for inspecting and manipulating Hexpat data structures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.bytestring)
          (hsPkgs.hexpat)
          (hsPkgs.lens)
          (hsPkgs.hexpat-tagsoup)
          ];
        };
      };
    }