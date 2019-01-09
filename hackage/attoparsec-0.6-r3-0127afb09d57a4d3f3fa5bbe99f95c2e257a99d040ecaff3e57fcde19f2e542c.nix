{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; applicative-in-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "attoparsec"; version = "0.6"; };
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
      "library" = {
        depends = ([ (hsPkgs.bytestring-lexing) ] ++ (if flags.split-base
          then [ (hsPkgs.base) ]
          else [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.containers) ])) ++ [
          (hsPkgs.base)
          ];
        };
      };
    }