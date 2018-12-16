{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { dingus = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cheapskate";
        version = "0.1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2012-2013 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://github.com/jgm/cheapskate";
      url = "";
      synopsis = "Experimental markdown processor.";
      description = "This is an experimental Markdown processor in pure\nHaskell.  It aims to process Markdown efficiently and in\nthe most forgiving possible way.  It is designed to deal\nwith any input, including garbage, with linear\nperformance.  Output is sanitized by default for\nprotection against XSS attacks.\n\nSeveral markdown extensions are implemented, including\nfenced code blocks, significant list start numbers, and\nautolinked URLs.  See README.markdown for details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.blaze-html)
          (hsPkgs.xss-sanitize)
          (hsPkgs.data-default)
          (hsPkgs.syb)
          (hsPkgs.uniplate)
          (hsPkgs.deepseq)
        ];
      };
      exes = {
        "cheapskate" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cheapskate)
            (hsPkgs.bytestring)
            (hsPkgs.blaze-html)
            (hsPkgs.text)
          ];
        };
        "cheapskate-dingus" = {
          depends = pkgs.lib.optionals (flags.dingus) [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.cheapskate)
            (hsPkgs.blaze-html)
            (hsPkgs.text)
            (hsPkgs.wai-extra)
            (hsPkgs.wai)
            (hsPkgs.http-types)
          ];
        };
      };
    };
  }