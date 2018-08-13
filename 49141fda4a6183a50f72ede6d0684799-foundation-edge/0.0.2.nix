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
      specVersion = "1.10";
      identifier = {
        name = "foundation-edge";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "https://github.com/haskell-foundation/foundation-edge";
      url = "";
      synopsis = "foundation's edge with the conventional set of packages";
      description = "A set of functions to allow interaction with more conventional\nand well established packages like bytestring, text, vector\n\nCurrent support:\n\n* bytestring";
      buildType = "Simple";
    };
    components = {
      "foundation-edge" = {
        depends  = [
          (hsPkgs.foundation)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
    };
  }