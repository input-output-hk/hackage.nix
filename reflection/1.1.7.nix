{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      slow = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "reflection";
          version = "1.1.7";
        };
        license = "BSD-3-Clause";
        copyright = "2009-2013 Edward A. Kmett,\n2012 Elliott Hird,\n2004 Oleg Kiselyov and Chung-chieh Shan";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett, Elliott Hird, Oleg Kiselyov and Chung-chieh Shan";
        homepage = "http://github.com/ekmett/reflection";
        url = "";
        synopsis = "Reifies arbitrary terms into types that can be reflected back into terms";
        description = "This package provides an implementation of the ideas presented in the paper\n\\\"Functional Pearl: Implicit Configurations\\\" by Oleg Kiselyov and\nChung-chieh Shan. However, the API has been streamlined to improve performance.\n\nThe original paper can be obtained from\n<http://www.cs.rutgers.edu/~ccshan/prepose/prepose.pdf>.";
        buildType = "Simple";
      };
      components = {
        reflection = {
          depends  = [
            hsPkgs.base
            hsPkgs.tagged
          ];
        };
      };
    }