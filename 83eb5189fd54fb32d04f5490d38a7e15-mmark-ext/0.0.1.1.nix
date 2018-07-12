{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "mmark-ext";
          version = "0.0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov92@gmail.com>";
        author = "Mark Karpov <markkarpov92@gmail.com>";
        homepage = "https://github.com/mrkkrp/mmark-ext";
        url = "";
        synopsis = "Commonly useful extensions for MMark markdown processor";
        description = "Commonly useful extensions for MMark markdown processor.";
        buildType = "Simple";
      };
      components = {
        "mmark-ext" = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default-class
            hsPkgs.foldl
            hsPkgs.lucid
            hsPkgs.mmark
            hsPkgs.modern-uri
            hsPkgs.text
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.data-default-class
              hsPkgs.hspec
              hsPkgs.lucid
              hsPkgs.mmark
              hsPkgs.mmark-ext
              hsPkgs.text
            ];
          };
        };
      };
    }