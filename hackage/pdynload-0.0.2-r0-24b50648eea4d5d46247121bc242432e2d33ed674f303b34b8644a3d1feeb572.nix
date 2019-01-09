{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "pdynload"; version = "0.0.2"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2009 ~ 2010 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "pdynload is polymorphic dynamic linking library.";
      description = "This package use GHC-API implement polymorphic dynamic loading function -- pdynload.\nBecause pdynload invoke the regular type checker at runtime,\nso pdynload is perfectly safety and does not inhibit the use of any features of the type system.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-paths)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.old-time)
          (hsPkgs.ghc)
          ];
        };
      };
    }