{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      split-base = true;
      applicative-in-base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "attoparsec";
        version = "0.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "";
      url = "";
      synopsis = "Fast combinator parsing with Data.ByteString.Lazy";
      description = "Fast, flexible text-oriented parsing of lazy ByteStrings.";
      buildType = "Simple";
    };
    components = {
      "attoparsec" = {
        depends  = ([
          (hsPkgs.bytestring-lexing)
        ] ++ (if _flags.split-base
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
          ])) ++ [ (hsPkgs.base) ];
      };
    };
  }