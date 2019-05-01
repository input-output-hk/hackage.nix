{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { demos = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "purebred-email"; version = "0.1.0.1"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright 2017-2018  Fraser Tweedale";
      maintainer = "frase@frase.id.au";
      author = "Fraser Tweedale";
      homepage = "https://github.com/purebred-mua/purebred-email";
      url = "";
      synopsis = "types and parser for email messages (including MIME)";
      description = "The purebred email library.  RFC 5322, MIME, etc.\n\nThings that are currently implemented:\n\n- RFC 5322 message parsing and serialisation\n- MIME multipart parsing (RFC 2046)\n- MIME message header extensions for non-ASCII text (RFC 2047)\n- MIME parameter value and encoded word extensions (RFC 2231)\n- Content-Disposition header field (RFC 2183)\n\nThings that are not yet implemented / need improvement:\n\n- Support for more charsets\n- Improve handling of dates\n- Sensible heuristics for choosing a content transfer encoding\n- Probably lots of other things";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.concise)
          (hsPkgs.deepseq)
          (hsPkgs.lens)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroups)
          (hsPkgs.stringsearch)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      exes = {
        "purebred-email-parse" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.semigroups)
            (hsPkgs.purebred-email)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.purebred-email)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-golden)
            (hsPkgs.attoparsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.case-insensitive)
            (hsPkgs.semigroups)
            (hsPkgs.time)
            ];
          };
        };
      };
    }