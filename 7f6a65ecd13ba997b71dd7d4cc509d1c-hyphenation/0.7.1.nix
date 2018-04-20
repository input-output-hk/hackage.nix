{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      embed = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hyphenation";
          version = "0.7.1";
        };
        license = "BSD-2-Clause";
        copyright = "(C) 2012-2016 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/hyphenation";
        url = "";
        synopsis = "Configurable Knuth-Liang hyphenation";
        description = "Configurable Knuth-Liang hyphenation\n\nUses the UTF8 encoded hyphenation patterns provided by\nhyph-utf8 from\n<http://www.ctan.org/tex-archive/language/hyph-utf8>\n\nUsage:\n\n>>> hyphenate english_US \"supercalifragilisticexpialadocious\"\n[\"su\",\"per\",\"cal\",\"ifrag\",\"ilis\",\"tic\",\"ex\",\"pi\",\"al\",\"ado\",\"cious\"]\n\n>>> hyphenate english_US \"hyphenation\"\n[\"hy\",\"phen\",\"ation\"]\n\n>>> hyphenate icelandic \"va\\240lahei\\240avegavinnuverkf\\230rageymslusk\\250r\"\n[\"va\\240la\",\"hei\\240a\",\"vega\",\"vinnu\",\"verk\",\"f\\230ra\",\"geymslu\",\"sk\\250r\"]";
        buildType = "Custom";
      };
      components = {
        hyphenation = {
          depends  = ([
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.zlib
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups) ++ pkgs.lib.optional _flags.embed hsPkgs.file-embed;
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.doctest
              hsPkgs.hyphenation
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }