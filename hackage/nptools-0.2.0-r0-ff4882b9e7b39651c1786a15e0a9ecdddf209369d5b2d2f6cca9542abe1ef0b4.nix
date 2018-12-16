{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = {
        name = "nptools";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Nicolas Pouillard";
      maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
      author = "Nicolas Pouillard";
      homepage = "";
      url = "";
      synopsis = "A collection of random tools";
      description = "A collection of random tools";
      buildType = "Simple";
    };
    components = {
      exes = {
        "archive" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.HSH)
          ];
        };
        "color-diff" = {
          depends = [ (hsPkgs.base) ];
        };
        "events-to-timelog" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ];
        };
        "extract-non-ascii" = {
          depends = [ (hsPkgs.base) ];
        };
        "git-prompt" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.HSH)
          ];
        };
        "iter-lines" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.bytestring)
          ];
        };
        "label" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HSH)
            (hsPkgs.split)
            (hsPkgs.process)
          ];
        };
        "bufferize" = {
          depends = [ (hsPkgs.base) ];
        };
        "mh-gen-message-id-mapping" = {
          depends = [ (hsPkgs.base) ];
        };
        "show-non-ascii" = {
          depends = [ (hsPkgs.base) ];
        };
        "show-pollbox" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.SHA)
            (hsPkgs.MissingH)
          ];
        };
        "summ" = {
          depends = [ (hsPkgs.base) ];
        };
        "tac" = {
          depends = [ (hsPkgs.base) ];
        };
        "rot" = {
          depends = [ (hsPkgs.base) ];
        };
        "pad" = {
          depends = [ (hsPkgs.base) ];
        };
        "myrev" = {
          depends = [ (hsPkgs.base) ];
        };
        "loopback" = {
          depends = [ (hsPkgs.base) ];
        };
        "what-I-have-done-today" = {
          depends = [ (hsPkgs.base) ];
        };
        "x-printable" = {
          depends = [ (hsPkgs.base) ];
        };
      };
    };
  }