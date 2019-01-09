{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hackage-sparks"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/hackage-sparks";
      url = "";
      synopsis = "Generate sparkline graphs of hackage statistics";
      description = "Generate sparkline graphs of hackage statistics";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hackagesparks" = {
          depends = [
            (hsPkgs.hsparklines)
            (hsPkgs.tagsoup)
            (hsPkgs.parsedate)
            (hsPkgs.filepath)
            ] ++ (if flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.old-locale)
              (hsPkgs.old-time)
              (hsPkgs.directory)
              ]
            else [ (hsPkgs.base) ]);
          };
        };
      };
    }