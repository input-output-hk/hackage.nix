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
        name = "hexquote";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
      author = "Keegan McAllister <mcallister.keegan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Hexadecimal ByteString literals, with placeholders that bind variables";
      description = "This library defines a quasiquoter for @ByteString@s. As an expression, it\nprovides hexadecimal @ByteString@ literals.  As a pattern, the hexdump can\ncontain named placeholders of fixed size, which bind local variables when\npattern matching.";
      buildType = "Simple";
    };
    components = {
      "hexquote" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.parsec)
        ];
      };
    };
  }