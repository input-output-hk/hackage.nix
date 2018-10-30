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
        name = "bytestringparser";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "";
      url = "";
      synopsis = "Combinator parsing with Data.ByteString.Lazy";
      description = "";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = (if flags.split-base
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
          ]) ++ [ (hsPkgs.base) ];
      };
    };
  }