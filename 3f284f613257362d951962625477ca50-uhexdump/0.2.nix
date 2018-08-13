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
      specVersion = "0";
      identifier = {
        name = "uhexdump";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<E.Y.Kow@brighton.ac.uk>";
      author = "Eric Kow";
      homepage = "";
      url = "";
      synopsis = "hex dumper for UTF-8 text";
      description = "hex dumper for UTF-8 text";
      buildType = "Simple";
    };
    components = {
      exes = {
        "uhexdump" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }