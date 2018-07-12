{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-text";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "what_is_it_to_do_anything@yahoo.com";
        author = "Michael Thompson";
        homepage = "https://github.com/michaelt/text-pipes";
        url = "";
        synopsis = "Text pipes.";
        description = "Many of the pipes and other operations defined here mirror those in\nthe `pipes-bytestring` library. Folds like `length` and grouping\noperations like `lines` simply  adjust for the differences between\n`ByteString` and `Text` and `Word8` and `Char`. The distinctive feature\nof the library is the `Text/ByteString` encoding and decoding apparatus.\n\nTo this core are added some simple functions akin to the `String`\noperations in `Pipes.Prelude`, and others like the utilities in `Data.Text`.\n\nAll of the `IO` operations defined here - e.g `readFile`, `stdout` etc.\n- are conveniences akin to those in `Data.Text.IO` which e.g. try to\nfind the system encoding and use the exceptions defined in the `text`\nlibrary. Proper `IO` in the sense of this library will employ\n`pipes-bytestring` in conjuntion with 'pure' operations like\n`decodeUtf8` and `encodeUtf8` that are defined here.";
        buildType = "Simple";
      };
      components = {
        "pipes-text" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.profunctors
            hsPkgs.pipes
            hsPkgs.pipes-group
            hsPkgs.pipes-parse
            hsPkgs.pipes-safe
            hsPkgs.pipes-bytestring
            hsPkgs.transformers
          ];
        };
      };
    }