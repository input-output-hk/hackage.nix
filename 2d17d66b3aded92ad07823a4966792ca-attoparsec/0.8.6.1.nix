{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
      split-base = true;
      applicative-in-base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "attoparsec";
          version = "0.8.6.1";
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
        attoparsec = {
          depends  = ([
            hsPkgs.deepseq
          ] ++ (if _flags.split-base
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
            ])) ++ [ hsPkgs.base ];
        };
      };
    }