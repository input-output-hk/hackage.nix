{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Data-Hash-Consistent";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@fastmail.fm";
      author = "brad clawsie";
      homepage = "https://github.com/bradclawsie/haskell-Data.Hash.Consistent";
      url = "";
      synopsis = "Provide a simple consistent hashing mechanism";
      description = "Provide a simple consistent hashing mechanism";
      buildType = "Simple";
    };
    components = {
      "Data-Hash-Consistent" = {
        depends  = [
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          (hsPkgs.digest)
          (hsPkgs.utf8-string)
          (hsPkgs.base)
        ];
      };
    };
  }