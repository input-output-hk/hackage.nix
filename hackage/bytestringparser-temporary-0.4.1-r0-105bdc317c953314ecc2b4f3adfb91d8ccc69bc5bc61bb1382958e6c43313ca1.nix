{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      split-base = true;
      applicative-in-base = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "bytestringparser-temporary";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jason Dusek <jason.dusek@gmail.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "";
      url = "";
      synopsis = "Combinator parsing with Data.ByteString.Lazy";
      description = "AttoParsec with a small patch so I can get on with my parser.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (if flags.split-base
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
          ]) ++ [ (hsPkgs.base) ];
      };
    };
  }