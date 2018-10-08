{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      dev = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "self-extract";
        version = "0.3.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brandon Chinn <brandonchinn178@gmail.com>";
      author = "Brandon Chinn <brandonchinn178@gmail.com>";
      homepage = "https://github.com/brandonchinn178/self-extract#readme";
      url = "";
      synopsis = "A Haskell library to make self-extracting executables";
      description = "A Haskell library to make self-extracting executables.";
      buildType = "Simple";
    };
    components = {
      "self-extract" = {
        depends  = [
          (hsPkgs.Cabal)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.extra)
          (hsPkgs.file-embed)
          (hsPkgs.path)
          (hsPkgs.path-io)
          (hsPkgs.unix-compat)
          (hsPkgs.ztar)
        ];
      };
      exes = {
        "self-bundle" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.self-extract)
          ];
        };
      };
    };
  }