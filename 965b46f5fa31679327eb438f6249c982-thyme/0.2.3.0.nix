{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      bug-for-bug = true;
      show-internal = false;
      werror = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "thyme";
          version = "0.2.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "© 2013 Liyang HU";
        maintainer = "thyme@liyang.hu";
        author = "Liyang HU, Ashley Yakeley";
        homepage = "https://github.com/liyang/thyme";
        url = "";
        synopsis = "A faster time library";
        description = "Thyme is a rewrite of the fine @time@ library, with a particular focus\non performance for applications that make heavy use of timestamps.\n\nSee \"Data.Thyme\" for a full description.";
        buildType = "Simple";
      };
      components = {
        "thyme" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.lens
            hsPkgs.old-locale
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.vector-space
          ];
        };
        tests = {
          "sanity" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.lens
              hsPkgs.old-locale
              hsPkgs.text
              hsPkgs.thyme
              hsPkgs.time
              hsPkgs.vector-space
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.lens
              hsPkgs.old-locale
              hsPkgs.random
              hsPkgs.thyme
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.vector-space
            ];
          };
        };
      };
    }