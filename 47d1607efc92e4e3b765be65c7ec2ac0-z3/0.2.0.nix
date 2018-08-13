{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "z3";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2012, Iago Abal, David Castro";
      maintainer = "Iago Abal <iago.abal@gmail.com>,\nDavid Castro <david.castro.dcp@gmail.com>";
      author = "Iago Abal <iago.abal@gmail.com>,\nDavid Castro <david.castro.dcp@gmail.com>";
      homepage = "http://bitbucket.org/iago/z3-haskell";
      url = "";
      synopsis = "Bindings for the Z3 Theorem Prover";
      description = "Bindings for the Z3 Theorem Prover.\n\nThis package is still a work in progress. Low and medium-level bindings\nto the Z3 API are provided (\"Z3.Base.C\" and \"Z3.Base\") in the spirit\nof yices-painless. These APIs are still incomplete but usable.\nThe high-level API (\"Z3.Lang\") is still very experimental and likely to change.\n\nInstallation (Unix-like): Just be sure to use the standard locations for\ndynamic libraries (\\/usr\\/lib) and header files (\\/usr\\/include), or else use\nthe appropriate Cabal flags.\n\nHaddock documentation: <http://www.iagoabal.eu/z3-haskell/doc>\n\nMore information about Z3:\n\n* <http://z3.codeplex.com>";
      buildType = "Simple";
    };
    components = {
      "z3" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
        libs = [
          (pkgs."gomp")
          (pkgs."z3")
          (pkgs."gomp")
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }