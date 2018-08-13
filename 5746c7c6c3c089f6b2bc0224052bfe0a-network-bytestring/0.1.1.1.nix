{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      split-base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "network-bytestring";
        version = "0.1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johan.tibell@gmail.com";
      author = "Johan Tibell";
      homepage = "";
      url = "";
      synopsis = "Fast and memory efficient low-level networking";
      description = "Faster and more memory efficient low-level socket\nfunctions using 'Data.ByteString's instead of\n'String's.";
      buildType = "Simple";
    };
    components = {
      "network-bytestring" = {
        depends  = [
          (hsPkgs.HUnit)
          (hsPkgs.network)
        ] ++ (if _flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }