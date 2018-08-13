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
        name = "iconv-typed";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Alfredo Di Napoli";
      maintainer = "alfredo.dinapoli@gmail.com";
      author = "Alfredo Di Napoli";
      homepage = "https://github.com/adinapoli/iconv-typed#readme";
      url = "";
      synopsis = "Type safe iconv wrapper";
      description = "[iconv-typed]\n\nAn experiment in bringing type safety to the <http://hackage.haskell.org/package/iconv iconv> package.\n\n[Usage Example]\nThis is _almost_ a drop-in replacement. Compare the original code from `iconv`:\n\n> {-# LANGUAGE KindSignatures #-}\n> {-# LANGUAGE DataKinds #-}\n> {-# LANGUAGE OverloadedStrings #-}\n> module Main where\n>\n> import Codec.Text.IConv\n>\n> main :: IO ()\n> main = print \$ convert \"UTF-8\" \"LATIN1\" \"hello\"\n\nWith the equivalent in `iconv-typed`:\n\n> {-# LANGUAGE KindSignatures #-}\n> {-# LANGUAGE DataKinds #-}\n> {-# LANGUAGE OverloadedStrings #-}\n> module Main where\n>\n> import Codec.Text.IConv.Typed\n>\n> main :: IO ()\n> main = print \$ convert (E :: E \"UTF-8\") (E :: E \"LATIN1\") \"hello\"\n\nAs a result, this code will compile and run only if the passed encoding resolves to a supported\nencoding (as retrieved at compile time by calling `iconv -l`). For example, the following won't compile:\n\n> main = print \$ convert (E :: E \"UFT-8\") (E :: E \"LATIN1\") \"hello\"\n\nAs `UFT` is mispelled.";
      buildType = "Simple";
    };
    components = {
      "iconv-typed" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.iconv)
          (hsPkgs.shelly)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "iconv-typed-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.iconv-typed)
          ];
        };
      };
    };
  }