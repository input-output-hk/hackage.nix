{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hubris";
        version = "0.0.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Mark Wotton <mwotton@gmail.com>";
      author = "Mark Wotton <mwotton@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Support library for Hubris, the Ruby <=> Haskell bridge";
      description = "Support library for Hubris, the Ruby to Haskell bridge\nmore info at <http://github.com/mwotton/Hubris-Haskell>\n\nshort version: ./Setup configure --enable-shared --ghc-options=-dynamic --extra-include-dirs=... --extra-lib-dirs=...\n\nIf you omit any of those flags, it will seem to work then blow up at runtime.\n\nAnyway, this version strips the boilerplate that used to be necessary, and is intended to be used in conjunction with <http://github.com/mwotton/Hubris>.";
      buildType = "Simple";
    };
    components = {
      "hubris" = {
        depends  = [
          (hsPkgs.ghc)
          (hsPkgs.Cabal)
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.old-time)
          (hsPkgs.ghc-paths)
          (hsPkgs.hint)
        ];
        libs = [ (pkgs."ruby") ];
      };
      exes = {
        "Hubrify" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.Cabal)
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.array)
            (hsPkgs.mtl)
            (hsPkgs.old-time)
            (hsPkgs.ghc-paths)
            (hsPkgs.hint)
            (hsPkgs.process)
          ];
          libs = [ (pkgs."ruby") ];
        };
      };
    };
  }