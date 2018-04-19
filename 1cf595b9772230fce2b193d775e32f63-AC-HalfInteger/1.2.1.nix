{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "AC-HalfInteger";
          version = "1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andrew Coppin <MathematicalOrchid@hotmail.com>";
        author = "Andrew Coppin";
        homepage = "";
        url = "";
        synopsis = "Efficient half-integer type.";
        description = "This Haskell library is a simple implementation of\n/half-integers/. That is, it provides a type that can\nrepresent both normal integers and integers plus a half.\nChanges:\n* Fixed documentation glitches.\n* Added Integral contexts to some functions.";
        buildType = "Simple";
      };
      components = {
        AC-HalfInteger = {
          depends  = [ hsPkgs.base ];
        };
      };
    }