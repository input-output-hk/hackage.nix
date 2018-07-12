{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "z3";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "2012-2014, Iago Abal, David Castro";
        maintainer = "Iago Abal <mail@iagoabal.eu>,\nDavid Castro <david.castro.dcp@gmail.com>";
        author = "Iago Abal <mail@iagoabal.eu>,\nDavid Castro <david.castro.dcp@gmail.com>";
        homepage = "http://bitbucket.org/iago/z3-haskell";
        url = "";
        synopsis = "Bindings for the Z3 Theorem Prover";
        description = "Bindings for the Z3 Theorem Prover (<http://z3.codeplex.com>).\n\nLow-level bindings to the Z3 API are provided by \"Z3.Base\", this API is\nstill incomplete but pretty much stable.\n\nA simple but convenient wrapper for \"Z3.Base\" is provided by \"Z3.Monad\".\n\nThe \"Z3.Lang\" API provides a high-level interface to Z3, but it is still\nvery experimental and likely to change.\n\n* In version 0.3.2 the \"Z3.Lang\" interface has been deprecated, we will move\nit to a dedicated package.\n\nImportant notes:\n\n* Installation (Unix-like): Just be sure to use the standard locations for\ndynamic libraries (\\/usr\\/lib) and header files (\\/usr\\/include), or else\nuse the --extra-lib-dirs and --extra-include-dirs Cabal flags.\n\n* Haddock documentation can be found at\n<http://www.iagoabal.eu/z3-haskell/doc/0.3.2>.\n\n* Hackage fails to compile this package because of the (unsatisfied) /libz3/\ndependency.\n\nA changelog is available at <https://bitbucket.org/iago/z3-haskell/src/tip/CHANGES.md>";
        buildType = "Simple";
      };
      components = {
        "z3" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
          ];
          libs = if system.isOsx || system.isWindows
            then [ pkgs.z3 ]
            else [
              pkgs.gomp
              pkgs.z3
              pkgs.gomp
            ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
      };
    }