{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "parcom-lib";
          version = "0.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tdammers@gmail.com";
        author = "Tobias Dammers";
        homepage = "https://bitbucket.org/tdammers/parcom-lib";
        url = "";
        synopsis = "A simple parser-combinator library, a bit like Parsec but without the frills";
        description = "Parcom provides parser combinator functionality in a string-type-agnostic way;\nit supports strict ByteStrings (with Word8 tokens) and any list type (with\nthe element type as the token type) out-of-the-box, including plain old String.\nAny other stream-of-tokens type can be hooked into the library; unlike Parsec,\nnone of the built-in parsers assumes char-like tokens.";
        buildType = "Simple";
      };
      components = {
        "parcom-lib" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.word8
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.utf8-string
          ];
        };
      };
    }