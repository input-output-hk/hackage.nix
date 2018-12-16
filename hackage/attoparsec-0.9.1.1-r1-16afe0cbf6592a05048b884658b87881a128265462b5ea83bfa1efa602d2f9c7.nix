{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      developer = false;
      split-base = true;
      applicative-in-base = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "attoparsec";
        version = "0.9.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://bitbucket.org/bos/attoparsec";
      url = "";
      synopsis = "Fast combinator parsing for bytestrings";
      description = "A fast parser combinator library, aimed particularly at dealing\nefficiently with network protocols and complicated text/binary\nfile formats.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.deepseq)
        ] ++ (if flags.split-base
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
          ])) ++ [ (hsPkgs.base) ];
      };
    };
  }